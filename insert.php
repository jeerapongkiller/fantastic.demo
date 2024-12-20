<?php
require 'app-assets/vendors/excel/autoload.php'; // โหลด PhpSpreadsheet

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

// การตั้งค่า Database
$host = 'localhost';
$dbname = 'together.travel';
$username = 'root';
$password = '';

try {
    // เชื่อมต่อฐานข้อมูล
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // โหลดไฟล์ Excel
    $inputFileName = 'Agent_together.xlsx'; // เปลี่ยนชื่อไฟล์ตามจริง
    $spreadsheet = IOFactory::load($inputFileName);
    $worksheet = $spreadsheet->getActiveSheet();

    // วนลูปอ่านข้อมูลทีละบรรทัด
    foreach ($worksheet->getRowIterator() as $row) {
        $cellIterator = $row->getCellIterator();
        $cellIterator->setIterateOnlyExistingCells(false);

        // เก็บค่าจากแถวปัจจุบัน
        $rowData = [];
        foreach ($cellIterator as $cell) {
            $rowData[] = $cell->getValue();
        }

        if (!empty($rowData[2])) {
            // ตรวจสอบข้อมูลในแต่ละแถว (ตัวอย่าง: ใช้ column A และ B)
            $note = $rowData[0] ?? ''; // สมมติว่า column A คือ index 0
            $columnB = $rowData[1] ?? ''; // สมมติว่า column B คือ index 1
            $name = $rowData[2] ?? ''; // สมมติว่า column C คือ index 2
            $address = $rowData[9] ?? ''; // สมมติว่า column J คือ index 9
            $telephone = $rowData[10] ?? ''; // สมมติว่า column J คือ index 10

            $stmt = $pdo->prepare("INSERT INTO companies (name, telephone, address, note, company_type_id, is_approved, is_deleted, created_at, updated_at) VALUES (:name, :telephone, :address, :note, :company_type_id, :is_approved, :is_deleted, :created_at, :updated_at)");
            $stmt->execute([
                ':name' => $name,
                ':telephone' => $telephone,
                ':address' => $address,
                ':note' => $note,
                ':company_type_id' => 1,
                ':is_approved' => 1,
                ':is_deleted' => 0,
                ':created_at' => date('Y-m-d H:i:s'),
                ':updated_at' => date('Y-m-d H:i:s'),
            ]);
            $company_id = $pdo->lastInsertId();

            // programe [id] [periods] [ad || chd]
            $prod_ad[$company_id][] = isset($rowData[3]) ? (int)explode('/', $rowData[3])[0] : null; // BW - Phi Phi  Khai  Maiton Foreign AD
            $prod_chd[$company_id][] = isset($rowData[3]) ? (int)explode('/', $rowData[3])[1] : null; // BW - Phi Phi  Khai  Maiton Foreign CHD
            $prod_ad[$company_id][] = isset($rowData[4]) ? (int)explode('/', $rowData[4])[0] : null; // BW - Phi Phi  Khai  Maiton Thai AD
            $prod_chd[$company_id][] = isset($rowData[4]) ? (int)explode('/', $rowData[4])[1] : null; // BW - Phi Phi  Khai  Maiton Thai CHD

            $prod_ad[$company_id][] = isset($rowData[5]) ? (int)explode('/', $rowData[5])[0] : null; // PRD - Phi Phi  Khai  Maiton Foreign AD
            $prod_chd[$company_id][] = isset($rowData[5]) ? (int)explode('/', $rowData[5])[1] : null; // PRD - Phi Phi  Khai  Maiton Foreign CHD
            $prod_ad[$company_id][] = isset($rowData[6]) ? (int)explode('/', $rowData[6])[0] : null; // PRD - Phi Phi  Khai  Maiton Thai AD
            $prod_chd[$company_id][] = isset($rowData[6]) ? (int)explode('/', $rowData[6])[1] : null; // PRD - Phi Phi  Khai  Maiton Thai CHD

            $prod_ad[$company_id][] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[0] : null; // PRD - ROC - Racha Coral Sunset AD
            $prod_chd[$company_id][] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[1] : null; // PRD - ROC - Racha Coral Sunset CHD
            $prod_ad[$company_id][] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[0] : null; // PRD - ROC - Racha Coral Sunset AD
            $prod_chd[$company_id][] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[1] : null; // PRD - ROC - Racha Coral Sunset CHD

            $prod_ad[$company_id][] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[0] : null; // GOC - Racha Coral Sunset AD
            $prod_chd[$company_id][] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[1] : null; // GOC - Racha Coral Sunset CHD
            $prod_ad[$company_id][] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[0] : null; // GOC - Racha Coral Sunset AD
            $prod_chd[$company_id][] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[1] : null; // GOC - Racha Coral Sunset CHD

            for ($i = 0; $i < count($prod_ad[$company_id]); $i++) {
                $stmt = $pdo->prepare("INSERT INTO `product_rates`(`rate_adult`, `rate_child`, `product_period_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES (:rate_adult, :rate_child, :product_period_id, :is_approved, :is_deleted, :created_at, :updated_at)");
                $stmt->execute([
                    ':rate_adult' => $prod_ad[$company_id][$i],
                    ':rate_child' => $prod_chd[$company_id][$i],
                    ':product_period_id' => ($i % 8) + 1,
                    ':is_approved' => 1,
                    ':is_deleted' => 0,
                    ':created_at' => date('Y-m-d H:i:s'),
                    ':updated_at' => date('Y-m-d H:i:s'),
                ]);
                $product_rate_id = $pdo->lastInsertId();

                $stmt = $pdo->prepare("INSERT INTO `company_rate`(`company_id`, `product_period_id`, `product_rate_id`, `created_at`) VALUES (:company_id, :product_period_id, :product_rate_id, :created_at)");
                $stmt->execute([
                    ':company_id' => $company_id,
                    ':product_period_id' => ($i % 8) + 1,
                    ':product_rate_id' => $product_rate_id,
                    ':created_at' => date('Y-m-d H:i:s'),
                ]);
            }
        }
    }

    echo "Import สำเร็จ!";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
// $prod[1][2][1] = isset($rowData[3]) ? (int)explode('/', $rowData[3])[0] : null; // BW - Phi Phi  Khai  Maiton Foreign AD
        // $prod[1][2][2] = isset($rowData[3]) ? (int)explode('/', $rowData[3])[1] : null; // BW - Phi Phi  Khai  Maiton Foreign CHD
        // $prod[1][1][1] = isset($rowData[4]) ? (int)explode('/', $rowData[4])[0] : null; // BW - Phi Phi  Khai  Maiton Thai AD
        // $prod[1][1][2] = isset($rowData[4]) ? (int)explode('/', $rowData[4])[1] : null; // BW - Phi Phi  Khai  Maiton Thai CHD

        // $prod[2][4][1] = isset($rowData[5]) ? (int)explode('/', $rowData[5])[0] : null; // PRD - Phi Phi  Khai  Maiton Foreign AD
        // $prod[2][4][2] = isset($rowData[5]) ? (int)explode('/', $rowData[5])[1] : null; // PRD - Phi Phi  Khai  Maiton Foreign CHD
        // $prod[2][3][1] = isset($rowData[6]) ? (int)explode('/', $rowData[6])[0] : null; // PRD - Phi Phi  Khai  Maiton Thai AD
        // $prod[2][3][2] = isset($rowData[6]) ? (int)explode('/', $rowData[6])[1] : null; // PRD - Phi Phi  Khai  Maiton Thai CHD

        // $prod[3][6][1] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[0] : null; // PRD - ROC - Racha Coral Sunset AD
        // $prod[3][6][2] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[1] : null; // PRD - ROC - Racha Coral Sunset CHD
        // $prod[3][5][1] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[0] : null; // PRD - ROC - Racha Coral Sunset AD
        // $prod[3][5][2] = isset($rowData[7]) ? (int)explode('/', $rowData[7])[1] : null; // PRD - ROC - Racha Coral Sunset CHD

        // $prod[4][8][1] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[0] : null; // GOC - Racha Coral Sunset AD
        // $prod[4][8][2] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[1] : null; // GOC - Racha Coral Sunset CHD
        // $prod[4][7][1] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[0] : null; // GOC - Racha Coral Sunset AD
        // $prod[4][7][2] = isset($rowData[8]) ? (int)explode('/', $rowData[8])[1] : null; // GOC - Racha Coral Sunset CHD

        // echo '<table border="1" cellpadding="5" cellspacing="0">';
        // echo '<tr><th colspan="2">ข้อมูลลูกค้า</th></tr>';
        // echo '<tr><td><b>Name</b></td><td>' . htmlspecialchars($name) . '</td></tr>';
        // echo '<tr><td><b>Address</b></td><td>' . htmlspecialchars($address) . '</td></tr>';
        // echo '<tr><td><b>Telephone</b></td><td>' . htmlspecialchars($telephone) . '</td></tr>';
        // echo '<tr><td><b>Note</b></td><td>' . htmlspecialchars($note) . '</td></tr>';

        // echo '<tr><th colspan="2">ข้อมูลโปรแกรม</th></tr>';
        // echo '<tr><td><b>BW - Phi Phi Khai Maiton Foreign AD</b></td><td>' . ($prod[1][2][1] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>BW - Phi Phi Khai Maiton Foreign CHD</b></td><td>' . ($prod[1][2][2] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>BW - Phi Phi Khai Maiton Thai AD</b></td><td>' . ($prod[1][1][1] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>BW - Phi Phi Khai Maiton Thai CHD</b></td><td>' . ($prod[1][1][2] ?? 'N/A') . '</td></tr>';

        // echo '<tr><td><b>PRD - Phi Phi Khai Maiton Foreign AD</b></td><td>' . ($prod[2][4][1] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>PRD - Phi Phi Khai Maiton Foreign CHD</b></td><td>' . ($prod[2][4][2] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>PRD - Phi Phi Khai Maiton Thai AD</b></td><td>' . ($prod[2][3][1] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>PRD - Phi Phi Khai Maiton Thai CHD</b></td><td>' . ($prod[2][3][2] ?? 'N/A') . '</td></tr>';

        // echo '<tr><td><b>PRD - ROC - Racha Coral Sunset Foreign AD</b></td><td>' . ($prod[3][6][1] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>PRD - ROC - Racha Coral Sunset Foreign CHD</b></td><td>' . ($prod[3][6][2] ?? 'N/A') . '</td></tr>';

        // echo '<tr><td><b>GOC - Racha Coral Sunset AD</b></td><td>' . ($prod[4][8][1] ?? 'N/A') . '</td></tr>';
        // echo '<tr><td><b>GOC - Racha Coral Sunset CHD</b></td><td>' . ($prod[4][8][2] ?? 'N/A') . '</td></tr>';
        // echo '</table>';