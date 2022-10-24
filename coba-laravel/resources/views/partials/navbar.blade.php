<header class="header">
    <nav class="navbar navbar-expand-lg py-lg-0">
      <div class="container">
        <!--<a href="index.html" class="navbar-brand text-uppercase font-weight-bold">MTQ Zaid bin Tsabit</a>-->
        <a href="/" class="navbar-brand"><img src="/img/logo-color-min.png" width="90" height="50" class="d-inline-block align-top" alt=""></a>
        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right small"><span class="text-uppercase mr-2">Menu</span><i class="fas fa-bars"></i></button>
        <div id="navbarSupportedContent" class="collapse navbar-collapse">
          <ul class="navbar-nav ml-auto d-lg-flex align-items-lg-center">
            <li class="nav-item"><a href="/" class="nav-link font-weight-bold text-uppercase px-lg-3 py-lg-4 {{ Request::is('/') ? 'active' : '' }}">Beranda </a>
            </li>
            <li class="nav-item dropdown">
              <a id="navbarDropdownMenuLink" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link font-weight-bold text-uppercase px-lg-3 py-lg-4 dropdown-toggle {{ Request::is('akademik') ? 'active' : '' }}">Akademik</a>
              <div aria-labelledby="navbarDropdownMenuLink" class="dropdown-menu mt-0">
                <a href="/kurikulum" class="dropdown-item small text-uppercase">Kurikulum</a>
                <a href="/staf-pengajar" class="dropdown-item small text-uppercase">Pengajar & Staff</a>
                {{-- <a href="/psb" class="dropdown-item small text-uppercase">Penerimaan Santri Baru</a> --}}
              </div>
            </li>
            <li class="nav-item"><a href="/posts" class="nav-link font-weight-bold text-uppercase px-lg-3 py-lg-4 {{ Request::is('posts') ? 'active' : '' }}">Blog </a>
            </li>
            <li class="nav-item dropdown">
              <a id="navbarDropdownMenuLink" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link font-weight-bold text-uppercase px-lg-3 py-lg-4 dropdown-toggle @if(Request::is('wakaf') or Request::is('wakaf-pembangunan') or Request::is('panduan-wakaf-pembangunan')) active @endif ">Wakaf</a>
              <div aria-labelledby="navbarDropdownMenuLink" class="dropdown-menu mt-0">
                <a href="/wakaf-pembangunan" class="dropdown-item small text-uppercase">Pembangunan Gedung Baru</a>
                <a href="/wakaf-operasional" class="dropdown-item small text-uppercase">Operasional Pondok</a>
              </div>
            </li>
            </li>
            <li class="nav-item"><a href="/kontak" class="nav-link font-weight-bold text-uppercase px-lg-3 py-lg-4 {{ Request::is('kontak') ? 'active' : '' }}">Kontak </a>
            </li>

            @auth

                <li class="nav-item dropdown">
                  <a id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link font-weight-bold text-uppercase px-lg-3 py-lg-4 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Welcome, {{ auth()->user()->name }}
                  </a>
                  <div aria-labelledby="navbarDropdownMenuLink" class="dropdown-menu mt-0">
                    <a href="/dashboard" class="dropdown-item small text-uppercase">My Dashboard</a>
                    <form action="/logout" method="post">
                      @csrf
                      <button type="submit" href="#" class="dropdown-item small text-uppercase">Logout</button>
                    </form>
                  </div>
                </li>

            @else
                <li class="nav-item">
                  <a class="btn btn-outline-primary nav-btn btn-sm {{ ($active === 'login') ? 'active' : '' }}" href="/login"><i class="fas fa-sign-out-alt mr-2"></i> Login</a>
                </li>
            @endauth

          </ul>
        </div>
      </div>
    </nav>
  </header>