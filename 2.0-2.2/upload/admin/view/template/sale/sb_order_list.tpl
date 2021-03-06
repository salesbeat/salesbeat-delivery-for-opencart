<?= $header; ?><?= $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?= $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb): ?>
          <li><a href="<?= $breadcrumb['href']; ?>"><?= $breadcrumb['text']; ?></a></li>
        <?php endforeach; ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning): ?>
      <div class="alert alert-danger alert-dismissible">
        <i class="fa fa-exclamation-circle"></i> <?= $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php
    endif;
    if ($success):
      ?>
      <div class="alert alert-success alert-dismissible">
        <i class="fa fa-check-circle"></i> <?= $success; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
    <?php endif; ?>
    <div class="row">
      <div id="filter-order" class="col-md-3 col-md-push-9 col-sm-12 hidden-sm hidden-xs">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-filter"></i> <?= $text_filter; ?></h3>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label class="control-label" for="input-order-id"><?= $entry_order_id; ?></label>
              <input type="text" name="filter_order_id" value="<?= $filter_order_id; ?>" placeholder="<?= $entry_order_id; ?>" id="input-order-id" class="form-control" />
            </div>
            <div class="form-group">
              <label class="control-label" for="input-date-added"><?= $entry_date_added; ?></label>
              <div class="input-group date">
                <input type="text" name="filter_date_added" value="<?= $filter_date_added; ?>" placeholder="<?= $entry_date_added; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
                <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label" for="input-customer"><?= $entry_customer; ?></label>
              <input type="text" name="filter_customer" value="<?= $filter_customer; ?>" placeholder="<?= $entry_customer; ?>" id="input-customer" class="form-control" />
            </div>
            <div class="form-group">
              <label class="control-label" for="input-total"><?= $entry_total; ?></label>
              <input type="text" name="filter_total" value="<?= $filter_total; ?>" placeholder="<?= $entry_total; ?>" id="input-total" class="form-control" />
            </div>
            <div class="form-group text-right">
              <button type="button" id="button-filter" class="btn btn-default"><i class="fa fa-filter"></i> <?= $button_filter; ?></button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-9 col-md-pull-3 col-sm-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-list"></i> <?= $text_list; ?></h3>
          </div>
          <div class="panel-body">
            <form method="post" action="" enctype="multipart/form-data" id="form-order">
              <div class="table-responsive">
                <table class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <td style="width: 1px;" class="text-center">
                      <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" />
                    </td>
                    <td class="text-right">
                      <?php if ($sort == 'o.order_id'): ?>
                        <a href="<?= $sort_order; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_order_id; ?></a>
                      <?php else: ?>
                        <a href="<?= $sort_order; ?>"><?= $column_order_id ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-left">
                      <?php if ($sort == 'o.date_added'): ?>
                        <a href="<?= $sort_date_added; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_date_added; ?></a>
                      <?php else: ?>
                        <a href="<?= $sort_date_added; ?>"><?= $column_date_added; ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-left">
                      <?php if ($sort == 'customer'): ?>
                      <a href="<?= $sort_customer; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_customer ?></a>
                      <?php else: ?>
                      <a href="<?= $sort_customer; ?>"><?= $column_customer ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-right">
                      <?php if ($sort == 'o.total'): ?>
                        <a href="<?= $sort_total; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_total; ?></a>
                      <?php else: ?>
                        <a href="<?= $sort_total; ?>"><?= $column_total; ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-left">
                      <?php if ($sort == 'sb_type_delivery'): ?>
                        <a href="<?= $sort_sb_type_delivery; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_sb_type_delivery; ?></a>
                      <?php else: ?>
                        <a href="<?= $sort_sb_type_delivery; ?>"><?= $column_sb_type_delivery; ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-left">
                      <?php if ($sort == 'sb_tracking_number'): ?>
                        <a href="<?= $sort_sb_tracking_number; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_sb_tracking_number; ?></a>
                      <?php else: ?>
                        <a href="<?= $sort_sb_tracking_number; ?>"><?= $column_sb_tracking_number; ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-left">
                      <?php if ($sort == 'sb_tracking_status'): ?>
                        <a href="<?= $sort_sb_tracking_status; ?>" class="<?= mb_strtolower($order); ?>"><?= $column_sb_tracking_status; ?></a>
                      <?php else: ?>
                        <a href="<?= $sort_sb_tracking_status; ?>"><?= $column_sb_tracking_status; ?></a>
                      <?php endif; ?>
                    </td>
                    <td class="text-right"><?= $column_action; ?></td>
                  </tr>
                  </thead>
                  <tbody>
                  <?php
                  if (!empty($orders)):
                    foreach ($orders as $order):
                      ?>
                      <tr data-order data-order-id="<?= $order['order_id'] ?>">
                        <td class="text-center">
                          <?php if (in_array($order['order_id'], $selected)): ?>
                            <input type="checkbox" name="selected[]" value="<?= $order['order_id'] ?>" checked="checked" />
                          <?php else: ?>
                            <input type="checkbox" name="selected[]" value="<?= $order['order_id'] ?>" />
                          <?php endif; ?>
                          <input type="hidden" name="shipping_code[]" value="<?= $order['shipping_code'] ?>" />
                        </td>
                        <td class="text-right"><?= $order['order_id'] ?></td>
                        <td class="text-left"><?= $order['date_added'] ?></td>
                        <td class="text-left"><?= $order['customer'] ?></td>
                        <td class="text-right"><?= $order['total'] ?></td>
                        <td class="text-left"><?= $order['shipping_name'] ?></td>
                        <td class="text-left" data-track-code><?= $order['track_code'] ?></td>
                        <td class="text-left"><?= $order['tracking_status'] ?></td>
                        <td class="text-right">
                          <div style="min-width: 120px;">
                            <div class="btn-group">
                              <a href="<?= $order['view'] ?>" target="_blank" data-toggle="tooltip" title="<?= $button_view ?>" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                              <a href="#" data-toggle="tooltip" title="<?= $button_order_send ?>" class="btn btn-success" data-send-order data-order-id="<?= $order['order_id'] ?>"><i class="fa fa-send"></i></a>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <?php
                    endforeach;
                  else:
                    ?>
                    <tr>
                      <td class="text-center" colspan="9"><?= $text_no_results; ?></td>
                    </tr>
                  <?php endif; ?>
                  </tbody>

                </table>
              </div>
            </form>
            <div class="row">
              <div class="col-sm-6 text-left"><?= $pagination ?></div>
              <div class="col-sm-6 text-right"><?= $results ?></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript"><!--
      $('#button-filter').on('click', function() {
        url = '';

        var filter_order_id = $('input[name=\'filter_order_id\']').val();

        if (filter_order_id) {
          url += '&filter_order_id=' + encodeURIComponent(filter_order_id);
        }

        var filter_customer = $('input[name=\'filter_customer\']').val();

        if (filter_customer) {
          url += '&filter_customer=' + encodeURIComponent(filter_customer);
        }

        var filter_total = $('input[name=\'filter_total\']').val();

        if (filter_total) {
          url += '&filter_total=' + encodeURIComponent(filter_total);
        }

        var filter_date_added = $('input[name=\'filter_date_added\']').val();

        if (filter_date_added) {
          url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
        }

        location = 'index.php?route=sale/sb_order&token=<?= $token; ?>' + url;
      });
      //--></script>
    <script type="text/javascript"><!--
      $('input[name=\'filter_customer\']').autocomplete({
        'source': function(request, response) {
          $.ajax({
            url: 'index.php?route=customer/customer/autocomplete&token=<?= $token; ?>&filter_name=' +  encodeURIComponent(request),
            dataType: 'json',
            success: function(json) {
              response($.map(json, function(item) {
                return {
                  label: item['name'],
                  value: item['customer_id']
                }
              }));
            }
          });
        },
        'select': function(item) {
          $('input[name=\'filter_customer\']').val(item['label']);
        }
      });
      //--></script>
    <script type="text/javascript"><!--
      $('input[name^=\'selected\']').on('change', function() {
        $('#button-shipping, #button-invoice').prop('disabled', true);

        var selected = $('input[name^=\'selected\']:checked');

        if (selected.length) {
          $('#button-invoice').prop('disabled', false);
        }

        for (i = 0; i < selected.length; i++) {
          if ($(selected[i]).parent().find('input[name^=\'shipping_code\']').val()) {
            $('#button-shipping').prop('disabled', false);

            break;
          }
        }
      });

      $('#button-shipping, #button-invoice').prop('disabled', true);

      $('input[name^=\'selected\']:first').trigger('change');

      // IE and Edge fix!
      $('#button-shipping, #button-invoice').on('click', function(e) {
        $('#form-order').attr('action', this.getAttribute('formAction'));
      });
      //--></script>
    <script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
    <script type="text/javascript"><!--
      $('.date').datetimepicker({
        language: '<?= $datepicker ?>',
        pickTime: false
      });
      //--></script>
  </div>
</div>
<script type="text/javascript">
  window.addEventListener('load', function() {
    SalesbeatAdminDelivery.initOrders({
      url: "<?= str_replace('&amp;', '&', $link_send_order); ?>"
    });
  });
</script>
<?= $footer ?>