<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="{{ asset('assets') }}/img/sidebar-1.jpg">
            <!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text logo-mini">
                    BK
                </a>
                <a href="http://www.creative-tim.com" class="simple-text logo-normal">
                    Creative Tim
                </a>
            </div>
            <div class="sidebar-wrapper">
                <div class="user">
                    <div class="photo">
                        <img src="{{ asset('assets') }}/img/faces/avatar.jpg" />
                    </div>
                    <div class="info">
                        <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                            <span>
                                @if (Session::exists('namead'))
                                    {{ Session::get('namead') }}
                                @else 
                                    {{ Session::get('nameuser') }}
                                @endif
                                <b class="caret"></b>
                            </span>
                        </a>
                        <div class="clearfix"></div>
                        <div class="collapse" id="collapseExample">
                            <ul class="nav">
                                <li>
                                    <a href="{{ route('admin.show') }}">
                                        <span class="sidebar-mini"> MP </span>
                                        <span class="sidebar-normal"> My Profile </span>
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
                <ul class="nav">
                    <li class="{{ Request::routeIs('dashboard') ? 'active' : '' }}">
                        <a href="{{ route('dashboard') }}">
                            <i class="material-icons">dashboard</i>
                            <p> Dashboard </p>
                        </a>
                    </li>
                    
                    <li class="{{ Request::routeIs('book.main-bill') ? 'active' : '' }}">
                        <a href="{{ route('book.main-bill') }}" >
                             <i class="material-icons">compare_arrows</i>
                             <p>Ph??t S??ch</p>  
                        </a>    
                    </li>

                    <li class="{{ Request::routeIs('book.insert-amount') ? 'active' : '' }}">
                        <a href="{{ route('book.insert-amount') }}" >
                             <i class="material-icons">compare_arrows</i>
                             <p>Nh???p S??ch</p>  
                        </a>    
                    </li>
                  @if (Session::exists("idAd"))
                      <li class="{{ Request::routeIs('admin.index') ? 'active' : '' }}">
                        <a href="{{ route('admin.index') }}">
                            <i class="material-icons">admin_panel_settings</i>
                            <p> Qu???n l?? gi??o v??? </p>
                        </a>
                    </li>
                   @endif 
                         
                   
                    <li class="{{ Request::routeIs('course.index') ? 'active' : '' }}">
                        <a href="{{ route('course.index') }}">
                            <i class="material-icons">widgets</i>
                            <p> Qu???n L?? Kh??a </p>
                        </a>
                    </li>
                    <li class="{{ Request::routeIs('classroom.index') ? 'active' : '' }}">
                        <a href="{{ route('classroom.index') }}">
                            <i class="material-icons">sensor_door</i>
                            <p> Qu???n l?? l???p </p>
                        </a>
                    </li>
                    <li class="{{ Request::routeIs('subject.index') ? 'active' : '' }}">
                        <a href="{{ route('subject.index') }}">
                            <i class="material-icons">subject</i>
                            <p> Qu???n l?? m??n h???c </p>
                        </a>
                    </li>
                    <li class="{{ Request::routeIs('student.index') ? 'active' : '' }}">
                        <a href="{{ route('student.index') }}">
                            <i class="material-icons">school</i>
                            <p> Qu???n l?? sinh vi??n </p>
                        </a>
                    </li>
                    <li class="{{ Request::routeIs('book.index') ? 'active' : '' }}">
                        <a href="{{ route('book.index') }}">
                            <i class="material-icons">book</i>
                            <p> Qu???n l?? s??ch </p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>