Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "add_wysiwym_to_product_form",
                     :insert_after => "[data-hook='admin_product_form_description']") do
                       "<div id='editControls'>
                          <div class='btn-toolbar'>
                            <div class='btn-group btn-group-xs' role='group'>
                              <a class='btn btn-default' data-role='undo' href='javascript:void(0)'><i class='fa fa-undo'></i></a>
                              <a class='btn btn-default' data-role='redo' href='javascript:void(0)'><i class='fa fa-repeat'></i></a>
                            </div>
                            <div class='btn-group btn-group-xs' role='group'>
                              <a class='btn btn-default' data-role='bold' href='javascript:void(0)'><i class='fa fa-bold'></i></a>
                              <a class='btn btn-default' data-role='italic' href='javascript:void(0)'><i class='fa fa-italic'></i></a>
                              <a class='btn btn-default' data-role='underline' href='javascript:void(0)'><i class='fa fa-underline'></i></a>
                              <a class='btn btn-default' data-role='strikeThrough' href='javascript:void(0)'><i class='fa fa-strikethrough'></i></a>
                            </div>
                            <div class='btn-group btn-group-xs' role='group'>
                              <a class='btn btn-default' data-role='justifyLeft' href='javascript:void(0)'><i class='fa fa-align-left'></i></a>
                              <a class='btn btn-default' data-role='justifyCenter' href='javascript:void(0)'><i class='fa fa-align-center'></i></a>
                              <a class='btn btn-default' data-role='justifyRight' href='javascript:void(0)'><i class='fa fa-align-right'></i></a>
                              <a class='btn btn-default' data-role='justifyFull' href='javascript:void(0)'><i class='fa fa-align-justify'></i></a>
                            </div>
                            <div class='btn-group btn-group-xs' role='group'>
                              <a class='btn btn-default' data-role='indent' href='javascript:void(0)'><i class='fa fa-indent'></i></a>
                              <a class='btn btn-default' data-role='outdent' href='javascript:void(0)'><i class='fa fa-outdent'></i></a>
                              <a class='btn btn-default' data-role='insertUnorderedList' href='javascript:void(0)'><i class='fa fa-list-ul'></i></a>
                              <a class='btn btn-default' data-role='insertOrderedList' href='javascript:void(0)'><i class='fa fa-list-ol'></i></a>
                            </div>
                            <div class='btn-group btn-group-xs' role='group'>
                              <a class='btn btn-default' data-role='h1' href='javascript:void(0)'>H1</a>
                              <a class='btn btn-default' data-role='h2' href='javascript:void(0)'>H2</a>
                              <a class='btn btn-default' data-role='h3' href='javascript:void(0)'>H3</a>
                              <a class='btn btn-default' data-role='subscript' href='javascript:void(0)'><i class='fa fa-subscript'></i></a>
                              <a class='btn btn-default' data-role='superscript' href='javascript:void(0)'><i class='fa fa-superscript'></i></a>
                            </div>
                          </div>
                        </div>
                        <div id='editor' contenteditable>
                          <h1>Type out an <em>awesome</em> product description.</h1>
                          <div>People <strong><em>love</em></strong> a good description. It'll pay off...</div>
                        </div>
                        <script>
                          $('#editControls a').click(function(e) {
                            switch($(this).data('role')) {
                              case 'h1':
                              case 'h2':
                              case 'h3':
                              case 'p':
                                document.execCommand('formatBlock', false, $(this).data('role'));
                                break;
                              default:
                                document.execCommand($(this).data('role'), false, null);
                                break;
                            }

                            update_output();
                          });

                          $('#editor').bind(
                            'blur keyup paste copy cut mouseup',
                            function(e) {
                              update_output();
                            }
                          );

                          $('#product_description').hide();

                          function update_output() {
                            $('#product_description').val($('#editor').html());
                          }
                        </script>"
                     end
