<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard') ? 'active' : '' }}" aria-current="page" href="/dashboard">
            <span data-feather="home"></span>
            Dashboard
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/posts*') ? 'active' : '' }}" href="/dashboard/posts">
            <span data-feather="file-text"></span>
            My Posts
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/categories*') ? 'active' : '' }}" href="/dashboard/categories">
            <span data-feather="grid"></span>
            Post Categories  
          </a>
        </li>

        <h6 class="sidebar-heading d-flex justify-content-between align-item-center px-3 mt-4 mb-1 text-muted">
          <span>Wakaf Pembangunan</span>
        </h6>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/budgets*') ? 'active' : '' }}" href="/dashboard/budgets">
            <span data-feather="layers"></span>
            RAB  
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/donates*') ? 'active' : '' }}" href="/dashboard/donates">
            <span data-feather="list"></span>
            Daftar Wakaf  
          </a>
        </li>

        <h6 class="sidebar-heading d-flex justify-content-between align-item-center px-3 mt-4 mb-1 text-muted">
          <span>Pengaturan Website</span>
        </h6>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/settings*') ? 'active' : '' }}" href="/dashboard/settings/static-pages">
            <span data-feather="layout"></span>
            Halaman Statis
          </a>
        </li>



      </ul>

      

      {{-- @can('admin')
        <h6 class="sidebar-heading d-flex justify-content-between align-item-center px-3 mt-4 mb-1 text-muted">
          <span>Administrator</span>
        </h6>

        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard/categories*') ? 'active' : '' }}" href="/dashboard/categories">
              <span data-feather="grid"></span>
              Post Categories  
            </a>
          </li>
        </ul>
      @endcan --}}


      <div class="d-grid gap-2 p-3 mb-auto">
        <a href="/" target="blank" class="btn btn-primary btn-sm rounded-0" type="button">View your site</a>
      </div>
    </div>
  </nav>