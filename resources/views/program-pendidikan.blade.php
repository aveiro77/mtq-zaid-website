@extends('layouts/main')
@section('container')
    
            <div class="row p-5">
                <div class="col-lg-9 mx-auto">
                  <!-- Accordion -->
                  <div id="accordionExample" class="accordion shadow">
            
                    <!-- Accordion item 1 -->
                    <div class="card">
                      <div id="headingOne" class="card-header bg-white shadow-sm border-0">
                        <h6 class="mb-0 font-weight-bold"><a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="d-block position-relative text-dark text-uppercase collapsible-link py-2">Collapsible Group Item #1</a></h6>
                      </div>
                      <div id="collapseOne" aria-labelledby="headingOne" data-parent="#accordionExample" class="collapse show">
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
            
                    <!-- Accordion item 2 -->
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
            
                    <!-- Accordion item 3 -->
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
              </div>
    </div>

@endsection