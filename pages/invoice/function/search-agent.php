<?php
require_once '../../../config/env.php';
require_once '../../../controllers/Invoice.php';

$invObj = new Invoice();
$today = date("Y-m-d");
$times = date("H:i:s");

if (isset($_POST['action']) && $_POST['action'] == "search-booking" && !empty($_POST['travel_date'])) {
    // get value from ajax
    $travel_date = $_POST['travel_date'] != "" ? $_POST['travel_date'] : '0000-00-00';

    $first_booking = array();
    $first_company = array();
    $first_bpr = array();
    $bookings = $invObj->showlist('bookings', $travel_date, 'all', 0);
    if (!empty($bookings)) {
        foreach ($bookings as $booking) {
            # --- get value agent --- #
            if (in_array($booking['comp_id'], $first_company) == false && !empty($booking['comp_id'])) {
                $first_company[] = $booking['comp_id'];
                $agent_id[] = !empty($booking['comp_id']) ? $booking['comp_id'] : 0;
                $agent_name[] = !empty($booking['comp_name']) ? $booking['comp_name'] : '';
            }
            # --- get value booking --- #
            if (in_array($booking['id'], $first_booking) == false) {
                $first_booking[] = $booking['id'];
                $bo_id[$booking['comp_id']][] = !empty($booking['id']) ? $booking['id'] : 0;
                // $adult[$booking['comp_id']][] = !empty($booking['bpr_adult']) ? $booking['bpr_adult'] : 0;
                // $child[$booking['comp_id']][] = !empty($booking['bpr_child']) ? $booking['bpr_child'] : 0;
                // $infant[$booking['comp_id']][] = !empty($booking['bpr_infant']) ? $booking['bpr_infant'] : 0;
                // $foc[$booking['comp_id']][] = !empty($booking['bpr_foc']) ? $booking['bpr_foc'] : 0;
                // $tourrist[$booking['comp_id']][] = $booking['bpr_adult'] + $booking['bpr_child'] + $booking['bpr_infant'] + $booking['bpr_foc'];
                $cot[$booking['comp_id']][] = !empty($booking['total_paid']) ? $booking['total_paid'] : 0;
            }
            # --- get value rates --- #
            if ((in_array($booking['bpr_id'], $first_bpr) == false) && !empty($booking['bpr_id'])) {
                $first_bpr[] = $booking['bpr_id'];
                $bpr_id[$booking['comp_id']][] = !empty($booking['bpr_id']) ? $booking['bpr_id'] : 0;
                $category_id[$booking['comp_id']][] = !empty($booking['category_id']) ? $booking['category_id'] : 0;
                $category_name[$booking['comp_id']][] = !empty($booking['category_name']) ? $booking['category_name'] : 0;
                $category_cus[$booking['comp_id']][] = !empty($booking['category_cus']) ? $booking['category_cus'] : 0;
                $adult[$booking['comp_id']][] = !empty($booking['bpr_adult']) ? $booking['bpr_adult'] : 0;
                $child[$booking['comp_id']][] = !empty($booking['bpr_child']) ? $booking['bpr_child'] : 0;
                $infant[$booking['comp_id']][] = !empty($booking['bpr_infant']) ? $booking['bpr_infant'] : 0;
                $foc[$booking['comp_id']][] = !empty($booking['bpr_foc']) ? $booking['bpr_foc'] : 0;
                $tourrist[$booking['comp_id']][] = $booking['bpr_adult'] + $booking['bpr_child'] + $booking['bpr_infant'] + $booking['bpr_foc'];
            }
        }
    }
?>

    <div class="d-flex justify-content-between align-items-center header-actions mx-1 row mt-75 pt-1">
        <div class="col-4 text-left text-bold h4"></div>
        <div class="col-4 text-center text-bold h4"><?php echo !empty(substr($travel_date, 14, 24)) ? date('j F Y', strtotime(substr($travel_date, 0, 10))) . ' - ' . date('j F Y', strtotime(substr($travel_date, 14, 24))) : date('j F Y', strtotime($travel_date)); ?></div>
        <div class="col-4 text-right mb-50"></div>
    </div>

    <?php if (!empty($agent_id)) { ?>
        <table class="table table-striped text-uppercase table-vouchure-t2">
            <thead class="bg-light">
                <tr>
                    <th>ชื่อเอเยนต์</th>
                    <th class="text-center">Booking</th>
                    <th class="text-center">Total</th>
                    <th class="text-center">Audlt</th>
                    <th class="text-center">Children</th>
                    <th class="text-center">Infant</th>
                    <th class="text-center">FOC</th>
                    <th class="text-center">COT</th>
                </tr>
            </thead>
            <tbody>
                <?php for ($i = 0; $i < count($agent_id); $i++) { ?>
                    <tr onclick="modal_detail(<?php echo $agent_id[$i]; ?>, '<?php echo addslashes($agent_name[$i]); ?>', '<?php echo $travel_date; ?>');" data-toggle="modal" data-target="#modal-detail">
                        <td><?php echo $agent_name[$i]; ?></td>
                        <td class="text-center"><?php echo !empty($bo_id[$agent_id[$i]]) ? count($bo_id[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($tourrist[$agent_id[$i]]) ? array_sum($tourrist[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($adult[$agent_id[$i]]) ? array_sum($adult[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($child[$agent_id[$i]]) ? array_sum($child[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($infant[$agent_id[$i]]) ? array_sum($infant[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($foc[$agent_id[$i]]) ? array_sum($foc[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($cot[$agent_id[$i]]) ? number_format(array_sum($cot[$agent_id[$i]])) : 0; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    <?php } ?>

<?php
} elseif (isset($_POST['action']) && $_POST['action'] == "search-invoice" && !empty($_POST['travel_date'])) {
    // get value from ajax
    $travel_date = $_POST['travel_date'] != "" ? $_POST['travel_date'] : '0000-00-00';

    $first_cover = array();
    $first_company = array();
    $first_booking = array();
    $first_bpr = array();
    $invoices = $invObj->showlist('invoices', $travel_date, 'all', 0);
    if (!empty($invoices)) {
        foreach ($invoices as $invoice) {
            # --- get value booking --- #
            if (in_array($invoice['cover_id'], $first_cover) == false) {
                $first_cover[] = $invoice['cover_id'];
                $cover_id[$invoice['comp_id']][] = !empty($invoice['cover_id']) ? $invoice['cover_id'] : 0;
            }
            # --- get value agent --- #
            if (in_array($invoice['comp_id'], $first_company) == false && !empty($invoice['comp_id'])) {
                $first_company[] = $invoice['comp_id'];
                $agent_id[] = !empty($invoice['comp_id']) ? $invoice['comp_id'] : 0;
                $agent_name[] = !empty($invoice['comp_name']) ? $invoice['comp_name'] : '';
            }
            # --- get value booking --- #
            if (in_array($invoice['id'], $first_booking) == false) {
                $first_booking[] = $invoice['id'];
                $bo_id[$invoice['comp_id']][] = !empty($invoice['id']) ? $invoice['id'] : 0;
                $cot[$invoice['comp_id']][] = !empty($invoice['total_paid']) ? $invoice['total_paid'] : 0;
            }
            # --- get value rates --- #
            if ((in_array($invoice['bpr_id'], $first_bpr) == false) && !empty($invoice['bpr_id'])) {
                $first_bpr[] = $invoice['bpr_id'];
                $bpr_id[$invoice['comp_id']][] = !empty($invoice['bpr_id']) ? $invoice['bpr_id'] : 0;
                $category_id[$invoice['comp_id']][] = !empty($invoice['category_id']) ? $invoice['category_id'] : 0;
                $category_name[$invoice['comp_id']][] = !empty($invoice['category_name']) ? $invoice['category_name'] : 0;
                $category_cus[$invoice['comp_id']][] = !empty($invoice['category_cus']) ? $invoice['category_cus'] : 0;
                $adult[$invoice['comp_id']][] = !empty($invoice['bpr_adult']) ? $invoice['bpr_adult'] : 0;
                $child[$invoice['comp_id']][] = !empty($invoice['bpr_child']) ? $invoice['bpr_child'] : 0;
                $infant[$invoice['comp_id']][] = !empty($invoice['bpr_infant']) ? $invoice['bpr_infant'] : 0;
                $foc[$invoice['comp_id']][] = !empty($invoice['bpr_foc']) ? $invoice['bpr_foc'] : 0;
                $tourrist[$invoice['comp_id']][] = $invoice['bpr_adult'] + $invoice['bpr_child'] + $invoice['bpr_infant'] + $invoice['bpr_foc'];
            }
        }
    }
?>
    <div class="d-flex justify-content-between align-items-center header-actions mx-1 row mt-75 pt-1">
        <div class="col-4 text-left text-bold h4"></div>
        <div class="col-4 text-center text-bold h4"><?php echo !empty(substr($travel_date, 14, 24)) ? date('j F Y', strtotime(substr($travel_date, 0, 10))) . ' - ' . date('j F Y', strtotime(substr($travel_date, 14, 24))) : date('j F Y', strtotime($travel_date)); ?></div>
        <div class="col-4 text-right mb-50"></div>
    </div>

    <?php if (!empty($agent_id)) { ?>
        <table class="table table-striped text-uppercase table-vouchure-t2">
            <thead class="bg-light">
                <tr>
                    <th>ชื่อเอเยนต์</th>
                    <th class="text-center">Invoice</th>
                    <th class="text-center">Total</th>
                    <th class="text-center">Audlt</th>
                    <th class="text-center">Children</th>
                    <th class="text-center">Infant</th>
                    <th class="text-center">FOC</th>
                    <th class="text-center">COT</th>
                </tr>
            </thead>
            <tbody>
                <?php for ($i = 0; $i < count($agent_id); $i++) { ?>
                    <tr onclick="modal_detail(<?php echo $agent_id[$i]; ?>, '<?php echo addslashes($agent_name[$i]); ?>', '<?php echo $travel_date; ?>');" data-toggle="modal" data-target="#modal-detail">
                        <td><?php echo $agent_name[$i]; ?></td>
                        <td class="text-center"><?php echo !empty($cover_id[$agent_id[$i]]) ? count($cover_id[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($tourrist[$agent_id[$i]]) ? array_sum($tourrist[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($adult[$agent_id[$i]]) ? array_sum($adult[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($child[$agent_id[$i]]) ? array_sum($child[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($infant[$agent_id[$i]]) ? array_sum($infant[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($foc[$agent_id[$i]]) ? array_sum($foc[$agent_id[$i]]) : 0; ?></td>
                        <td class="text-center"><?php echo !empty($cot[$agent_id[$i]]) ? number_format(array_sum($cot[$agent_id[$i]])) : 0; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    <?php } ?>
<?php
} else {
    echo false;
}
