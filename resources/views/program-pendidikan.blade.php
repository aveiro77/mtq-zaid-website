@extends('layouts/main')
@section('container')
    
      <!--<div class="container text-center pt-5 pb-3">
        <h2>Program Reguler</h2>
      </div>     
      <div class="row pb-5 pl-5 pr-5">
        <div class="col-lg-9 mx-auto">
          
          <div id="accordionExample" class="accordion shadow">
          
            <div class="card">
                <div id="headingOne" class="card-header bg-white shadow-sm border-0">
                  <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="d-block position-relative text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #1</a></h6>
                </div>
                <div id="collapseOne" aria-labelledby="headingOne" data-parent="#accordionExample" class="collapse">
                  <div class="card-body p-5">
                    <div class="row">
                      <div class="col-lg-6">
                        <img src="img/home/portfolio-8.jpg" alt="" class="img-fluid">
                      </div>
                      <div class="col-lg-6">
                        <p class="font-weight-light m-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            
            
            <div class="card">
              <div id="headingTwo" class="card-header bg-white shadow-sm border-0">
                <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="d-block position-relative collapsed text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #2</a></h6>
              </div>
              <div id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordionExample" class="collapse">
                <div class="card-body p-5">
                  <p class="font-weight-light m-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                </div>
              </div>
            </div>
            
            
            <div class="card">
              <div id="headingThree" class="card-header bg-white shadow-sm border-0">
                <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="d-block position-relative collapsed text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #3</a></h6>
              </div>
              <div id="collapseThree" aria-labelledby="headingThree" data-parent="#accordionExample" class="collapse">
                <div class="card-body p-5">
                  <p class="font-weight-light m-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>-->

    @foreach($categories as $category)
      <div class="container text-center pt-5 pb-3">
        <h2>{{ $category['name'] }}</h2>
      </div>    
      <div class="row pb-5 pl-5 pr-5">
        <div class="col-lg-9 mx-auto">
          <!-- Accordion -->
              <div id="accordionExample{{ $category['id'] }}" class="accordion shadow">
                <!-- Accordion item 1 -->
                @foreach($programs as $prog)  
                  @if($prog->category==$category['name'])
                    <div class="card">
                      <div id="heading{{ $prog->id }}" class="card-header bg-white shadow-sm border-0">
                        <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapse{{ $prog->id }}" aria-expanded="true" aria-controls="collapse{{ $prog->id }}" class="d-block position-relative text-dark text-uppercase collapsible-link py-2">{{ $prog->title }}</a></h6>
                      </div>
                      <div id="collapse{{ $prog->id }}" aria-labelledby="heading{{ $prog->id }}" data-parent="#accordionExample{{ $category['id'] }}" class="collapse">
                        <div class="card-body">
                          <div class="row">
                            <div class="col-lg-5">
                              <img src="{{ asset('storage/'.$prog->image) }}" alt="" class="img-fluid mb-2">
                            </div>
                            <div class="col-lg-7">
                              <!--<p class="font-weight-light m-0"></p>-->
                              {!! $prog->description !!}
                              <a href="https://{{ $prog->link }}" target="_blank" type="button" class="btn btn-success btn-sm">Daftar Sekarang</a>
                            </div>
                          </div>
                        </div>
                      </div>  
                    </div>
                  @endif
                @endforeach    
              </div>
      </div>
    </div>
    @endforeach


      <!--<div class="container text-center pt-5 pb-3">
        <h2>Program Belajar Tahsin & Tahfidz Al Qur'an</h2>
      </div>     
      <div class="row pb-5 pl-5 pr-5">
        <div class="col-lg-9 mx-auto">
         
          <div id="accordionExample" class="accordion shadow">
           
            <div class="card">
                <div id="headingOne1" class="card-header bg-white shadow-sm border-0">
                  <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1" class="d-block position-relative text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #1</a></h6>
                </div>
                <div id="collapseOne1" aria-labelledby="headingOne1" data-parent="#accordionExample" class="collapse">
                  <div class="card-body p-5">
                    <div class="row">
                      <div class="col-lg-6">
                        <img src="img/home/portfolio-8.jpg" alt="" class="img-fluid">
                      </div>
                      <div class="col-lg-6">
                        <p class="font-weight-light m-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            
         
            <div class="card">
              <div id="headingTwo2" class="card-header bg-white shadow-sm border-0">
                <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2" class="d-block position-relative collapsed text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #2</a></h6>
              </div>
              <div id="collapseTwo2" aria-labelledby="headingTwo2" data-parent="#accordionExample" class="collapse">
                <div class="card-body p-5">
                  <p class="font-weight-light m-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                </div>
              </div>
            </div>
            
            
            <div class="card">
              <div id="headingThree3" class="card-header bg-white shadow-sm border-0">
                <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3" class="d-block position-relative collapsed text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #3</a></h6>
              </div>
              <div id="collapseThree3" aria-labelledby="headingThree3" data-parent="#accordionExample" class="collapse">
                <div class="card-body p-5">
                  <p class="font-weight-light m-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>-->
    </div>

@endsection