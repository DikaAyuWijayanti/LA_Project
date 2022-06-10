@extends('user.layouts.app')

@section('rekap')

  <div class="row">
    <div class="col-lg-7 col-md-9">
      <h1 class="display-2 text-white"><i class="fas fa-truck"></i> Cek Ongkir</h1>
      <p class="text-white mt-0 mb-2">Menampilkan Halaman Cek Ongkir</p>
    </div>
    <div class="offset-md-1 col-md-2  offset-lg-1 col-lg-3">
    </div>
  </div>

@endsection

@section('content')
<div class="row">
    <div class="col-xl-7 order-xl-1">
      <div class="card bg-secondary shadow">
        <div class="card-header bg-white border-0">
          <div class="row align-items-center">
            <div class="col-8">
              <h3 class="mb-0">Form Cek Ongkir</h3>
            </div>
          </div>
        </div>
        <div class="card-body">
          <form method="POST" action="{{ url('/user/ongkir') }}" enctype="multipart/form-data">
              @csrf
            <h6 class="heading-small text-muted mb-4">Informasi Produk</h6>
            <div class="pl-lg-4">
               <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="kota_asal">Provinsi Asal</label>
                        <select class="form-control js-example-basic-single" name="province_origin" id="province_id" required>
                          <option value="0">-- pilih provinsi asal --</option>  
                          @foreach ($provinces as $province => $value)
                                <option value="{{ $item['province'] }}">{{ $item['nama_province'] }}</option>
                            @endforeach
                        </select>
                      </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="kota_tujuan">Kota Asal</label>
                        <select class="form-control js-example-basic-single" name="city_origin" id="city_id" required>
                          <option value="">-- pilih kota asal --</option>  
                          @foreach ($kabupaten as $item)
                                <option value="{{ $item['city_id'] }}">{{ $item['nama_cities'] }}</option>
                            @endforeach
                        </select>
                      </div>
                </div>
                <div class="form-group">
                        <label class="font-weight-bold">PROVINSI TUJUAN</label>
                        <select class="form-control provinsi-tujuan" name="province_destination">
                            <option value="0">-- pilih provinsi tujuan --</option>
                            @foreach ($provinces as $province => $value)
                                <option value="{{ $province  }}">{{ $value }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold">KOTA / KABUPATEN TUJUAN</label>
                        <select class="form-control kota-tujuan" name="city_destination">
                            <option value="0">-- pilih kota tujuan --</option>
                        </select>
                    </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="kurir">Kurir</label>
                        <select class="form-control js-example-basic-singler" name="kurir" id="kurir" required>
                          <option value="">Pilih Kurir</option>  
                          <option value="jne">JNE</option>
                            <option value="tiki">TIKI</option>
                            <option value="pos">POS</option>
                        </select>
                      </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="weight">Berat (KG)</label>
                        <input autocomplete="off" type="text" class="form-control" id="weight" name="weight" placeholder="KG">
                        <small class="form-text text-muted">Contoh: 1.5 / 3 / 2.7 </small>
                    </div>
                </div>
              </div>
              <div class="row">
                  <div class="col-md-12">
                    <button type="submit" id="cek-ongkir-sekarang" class="btn btn-primary">Cek Ongkir</button>
                  </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    @if (session('ongkir'))
    <div class="col-xl-5 order-xl-2">
      <div class="card bg-secondary shadow">
        <div class="card-header bg-white border-0">
          <div class="row align-items-center">
            <div class="col-8">
              <h3 class="mb-0">Harga Ongkir</h3>
            </div>
          </div>
        </div>
        <div class="card-body p-2">
          <div class="table-responsive">
            <table style="border: 0px" class="table">
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Nama</h5></td>
                <td style="border: 0px"><h5>{{ session('ongkir')[0]['name'] }}</h5></td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Kode</h5></td>
                <td style="border: 0px"><h5>{{ session('ongkir')[0]['code'] }}</h5></td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Provinsi Asal</h5></td>
                <td style="border: 0px"><h5>{{ session('data')[0] }}</h5></td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Kota Asal</h5></td>
                <td style="border: 0px"><h5>{{ session('data')[0] }}</h5></td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Provinsi Tujuan</h5></td>
                <td style="border: 0px"><h5>{{ session('data')[0] }}</h5></td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Kota Tujuan</h5></td>
                <td style="border: 0px"><h5>{{ session('data')[1] }}</h5></td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px"><h5>Berat</h5></td>
                <td style="border: 0px"><h5>{{ number_format(session('data')[2], 0, '.', '.') }} KG</h5></td>
              </tr>
            </table>
          </div>

          @foreach (session('ongkir')[0]['costs'] as $cost)
            <hr>
            <table style="border: 0px" class="table table-flush">
              <tr style="border: 0px">
                <td style="border: 0px">Layanan</td>
                <td style="border: 0px">{{ $cost['service'] }}</td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px">Harga</td>
                <td style="border: 0px">Rp. {{ number_format($cost['cost'][0]['value'], 0, '.', '.') }}</td>
              </tr>
              <tr style="border: 0px">
                <td style="border: 0px">Estimasi</td>
                <td style="border: 0px">{{ $cost['cost'][0]['etd'] }}</td>
              </tr>
            </table>
          @endforeach
        </div>
      </div>
    </div>  
    @endif
  </div>
@endsection








@section('stylesheet')

  <link rel="stylesheet" href="{{ asset('/admin-template/select2/dist/css/select2.min.css') }}">

@endsection

@section('script')

  <script src="{{ asset('/admin-template/select2/dist/js/select2.min.js') }}"></script>

  <script>
    $(document).ready(function() {
        $('.js-example-basic-single').select2({
            placeholder: "Pilih Kota",
            allowClear: true
        });
        $('.js-example-basic-singler').select2({
            placeholder: "Pilih Kurir",
            allowClear: true
        });
    });
  </script>
@endsection