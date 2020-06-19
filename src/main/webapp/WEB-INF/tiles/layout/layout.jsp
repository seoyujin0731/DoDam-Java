<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <title>
           
        </title>
        <meta name="description" content="Page Titile">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
        <!-- Call App Mode on ios devices -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Remove Tap Highlight on Windows Phone IE -->
        <meta name="msapplication-tap-highlight" content="no">
        <!-- base css -->
        <link rel="stylesheet" media="screen, print" href="/resource/css/vendors.bundle.css">
        <link rel="stylesheet" media="screen, print" href="/resource/css/app.bundle.css">
        <!-- Place favicon.ico in the root directory -->
        <link rel="apple-touch-icon" sizes="180x180" href="/resource/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/resource/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="/resource/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
         <link rel="stylesheet" media="screen, print" href="/resource/css/datagrid/datatables/datatables.bundle.css">
        <!--<link rel="stylesheet" media="screen, print" href="css/your_styles.css">-->
    </head>
    
    <script>
            /**
             *   This script should be placed right after the body tag for fast execution 
             *   Note: the script is written in pure javascript and does not depend on thirdparty library
             **/
            'use strict';

            var classHolder = document.getElementsByTagName("BODY")[0],
                /** 
                 * Load from localstorage
                 **/
                themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
                {},
                themeURL = themeSettings.themeURL || '',
                themeOptions = themeSettings.themeOptions || '';
            /** 
             * Load theme options
             **/
            if (themeSettings.themeOptions)
            {
                classHolder.className = themeSettings.themeOptions;
                console.log("%c✔ Theme settings loaded", "color: #148f32");
            }
            else
            {
                console.log("Heads up! Theme settings is empty or does not exist, loading default settings...");
            }
            if (themeSettings.themeURL && !document.getElementById('mytheme'))
            {
                var cssfile = document.createElement('link');
                cssfile.id = 'mytheme';
                cssfile.rel = 'stylesheet';
                cssfile.href = themeURL;
                document.getElementsByTagName('head')[0].appendChild(cssfile);
            }
            /** 
             * Save to localstorage 
             **/
            var saveSettings = function()
            {
                themeSettings.themeOptions = String(classHolder.className).split(/[^\w-]+/).filter(function(item)
                {
                    return /^(nav|header|mod|display)-/i.test(item);
                }).join(' ');
                if (document.getElementById('mytheme'))
                {
                    themeSettings.themeURL = document.getElementById('mytheme').getAttribute("href");
                };
                localStorage.setItem('themeSettings', JSON.stringify(themeSettings));
            }
            /** 
             * Reset settings
             **/
            var resetSettings = function()
            {
                localStorage.setItem("themeSettings", "");
            }

        </script>
<style>
/* .page-logo, .page-sidebar, .nav-footer, .bg-brand-gradient{ */
/*                 background-color: #7c91df; */
/*             } */

.settings-panel {
   .expanded {
      &.theme-colors {
         display: block;
         box-shadow: none;
         border: 0;
         background: #7c91df;



         > ul {
            height: auto;

            > li {

               [data-action] {


                  width: 36px;
                  height: 36px;
                  margin-right: 4px;
                  margin-bottom: 4px;
                  border-radius: 4px;

                  &:hover {
                     opacity: 1;
                  }
               }

            }

            &:last-child {
               margin-right:0;
            }
         }   

         /*@include theme-button-color ($theme-1-fusion, $theme-1-primary, $theme-1-info, $theme-1-success, $theme-1-warning, $theme-1-danger)*/

/*          #myapp-0 {  */
/*             background: #886ab5; */
/*             box-shadow: inset 0 0 0 3px rgb(43, 161, 255); */
/*           } */
/*          #myapp-1 {  */
/*             background: #b56a9f; */
/*           } */
/*          #myapp-2 {  */
/*             background: #9fcb3d; */
/*          }  */
/*          #myapp-3 {  */
/*             background: #4679cc; */
/*          }  */
/*          #myapp-4 {  */
/*             background: #2198F3; */
/*          } */
/*          #myapp-5 {  */
/*             background: #6ab5b4; */
/*          } */
/*          #myapp-6 {  */
/*             background: #dd5293; */
/*          } */
/*          #myapp-7 {  */
/*             background: #868e96; */
/*          } 
         #myapp-8 { 
            background: #7c91df;
         }
/*          #myapp-9 {  */
/*             background: #e59c6c; */
/*          } */
/*          #myapp-10 {  */
/*             background: #778c85; */
/*          } */
/*          #myapp-11 {  */
/*             background: #a2b077; */
/*          } */
/*          #myapp-12 {  */
/*             background: #7976b3; */
/*          } */
/*          #myapp-13 {  */
/*             background: #55ce5f; */
/*          } */
/*          #myapp-14 {  */
/*             background: #5c4581; */
/*          } */
/*          #myapp-15 {  */
/*             background: #5c4581; */
/*          } */

      }
   }
}
</style>
  <body class="mod-bg-1 ">
        
        <!-- BEGIN Page Wrapper -->
        <div class="page-wrapper">
            <div class="page-inner">
            <tiles:insertAttribute name="sidebar" ignore="true" />
                <div class="page-content-wrapper">
                   <tiles:insertAttribute name="header" ignore="true" />
               <tiles:insertAttribute name="body" ignore="true" />
            
                
                
                    <div class="page-content-overlay" data-action="toggle" data-class="mobile-nav-on"></div> <!-- END Page Content -->
               <tiles:insertAttribute name="footer" ignore="true" />

                   
                    <!-- BEGIN Color profile -->
                    <!-- this area is hidden and will not be seen on screens or screen readers -->
                    <!-- we use this only for CSS color refernce for JS stuff -->
                    <p id="js-color-profile" class="d-none">
                        <span class="color-primary-50"></span>
                        <span class="color-primary-100"></span>
                        <span class="color-primary-200"></span>
                        <span class="color-primary-300"></span>
                        <span class="color-primary-400"></span>
                        <span class="color-primary-500"></span>
                        <span class="color-primary-600"></span>
                        <span class="color-primary-700"></span>
                        <span class="color-primary-800"></span>
                        <span class="color-primary-900"></span>
                        <span class="color-info-50"></span>
                        <span class="color-info-100"></span>
                        <span class="color-info-200"></span>
                        <span class="color-info-300"></span>
                        <span class="color-info-400"></span>
                        <span class="color-info-500"></span>
                        <span class="color-info-600"></span>
                        <span class="color-info-700"></span>
                        <span class="color-info-800"></span>
                        <span class="color-info-900"></span>
                        <span class="color-danger-50"></span>
                        <span class="color-danger-100"></span>
                        <span class="color-danger-200"></span>
                        <span class="color-danger-300"></span>
                        <span class="color-danger-400"></span>
                        <span class="color-danger-500"></span>
                        <span class="color-danger-600"></span>
                        <span class="color-danger-700"></span>
                        <span class="color-danger-800"></span>
                        <span class="color-danger-900"></span>
                        <span class="color-warning-50"></span>
                        <span class="color-warning-100"></span>
                        <span class="color-warning-200"></span>
                        <span class="color-warning-300"></span>
                        <span class="color-warning-400"></span>
                        <span class="color-warning-500"></span>
                        <span class="color-warning-600"></span>
                        <span class="color-warning-700"></span>
                        <span class="color-warning-800"></span>
                        <span class="color-warning-900"></span>
                        <span class="color-success-50"></span>
                        <span class="color-success-100"></span>
                        <span class="color-success-200"></span>
                        <span class="color-success-300"></span>
                        <span class="color-success-400"></span>
                        <span class="color-success-500"></span>
                        <span class="color-success-600"></span>
                        <span class="color-success-700"></span>
                        <span class="color-success-800"></span>
                        <span class="color-success-900"></span>
                        <span class="color-fusion-50"></span>
                        <span class="color-fusion-100"></span>
                        <span class="color-fusion-200"></span>
                        <span class="color-fusion-300"></span>
                        <span class="color-fusion-400"></span>
                        <span class="color-fusion-500"></span>
                        <span class="color-fusion-600"></span>
                        <span class="color-fusion-700"></span>
                        <span class="color-fusion-800"></span>
                        <span class="color-fusion-900"></span>
                    </p>
                
              </div>
            </div>
        </div>
                
        
        <!-- END Page Wrapper -->
        <!-- BEGIN Quick Menu -->
        <!-- to add more items, please make sure to change the variable '$menu-items: number;' in your _page-components-shortcut.scss -->
        <nav class="shortcut-menu d-none d-sm-block">
            <input type="checkbox" class="menu-open" name="menu-open" id="menu_open" />
            <label for="menu_open" class="menu-open-button ">
                <span class="app-shortcut-icon d-block"></span>
            </label>
            <a href="#" class="menu-item btn" data-toggle="tooltip" data-placement="left" title="Scroll Top">
                <i class="fal fa-arrow-up"></i>
            </a>
            
<!--   05.12 유진 로그아웃 -->
            <a class="menu-item btn" data-toggle="tooltip" data-placement="left" title="Logout" href="/login">
                <i class="fal fa-sign-out"></i>
            </a>

            
            <a href="#" class="menu-item btn" data-action="app-fullscreen" data-toggle="tooltip" data-placement="left" title="Full Screen">
                <i class="fal fa-expand"></i>
            </a>
            <a href="#" class="menu-item btn" data-action="app-print" data-toggle="tooltip" data-placement="left" title="Print page">
                <i class="fal fa-print"></i>
            </a>
         

        </nav>
        <!-- END Quick Menu -->
        

       
        <script src="/resource/js/vendors.bundle.js"></script>
        <script src="/resource/js/app.bundle.js"></script>
        <script src="/resource/js/vendors.bundle.js"></script>
       <script src="/resource/js/datagrid/datatables/datatables.bundle.js"></script>
         <script>
            $(document).ready(function()
            {
                $('#dt-basic-example').dataTable(
                {
                    responsive: true,
                    autoFill:
                    {
                        focus: 'hover'
                    }
                });
            });

        </script>
<!-- 지원 4/19 게시글 작성에 에러나면 넣어주세요 -->
        <script type="text/javascript">
            var example_gridsize = $("#example-gridsize");

            $("#gridrange").on("input change", function()
            {
                //do something
                example_gridsize.attr("placeholder", ".col-" + $(this).val());
                example_gridsize.parent().removeClass().addClass("col-" + $(this).val())
                console.log("col-" + $(this).val());
            });

        </script>
        
        

        
</body>

<!-- 05.12 로그아웃 -->
<!-- <script type="text/javascript"> -->
<!--         function submitAtag(){ -->
<!--             let form = document.logOutForm; -->
<!--             form.submit(); -->
<!--         } -->
<!-- </script> -->
</html>