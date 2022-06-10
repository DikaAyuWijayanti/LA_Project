@extends('pengrajin.layouts.app')
@section('rekap')
		<div class="row">
      <div class="col-lg-7 col-md-10">
        <h1 class="display-2 text-white"><i class="fas fa-shopping-bag"></i> Tambah Produk</h1>
        <p class="text-white mt-0 mb-2">Menampilkan Form Tambah Produk</p>
      </div>
    </div>
@endsection

@section('content')
	  <div class="row">
      <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
          <div class="card text-center ">
              <i style="" class="fas fa-shopping-bag fa-10x pt-5 pb-5"></i>
              <img style="display: none" class="img-thumbnail img-fluid" src="" alt="Card image cap">
          </div>
      </div>
      <div class="col-xl-8 order-xl-1">
        <div class="card bg-secondary shadow">
          <div class="card-header bg-white border-0">
            <div class="row align-items-center">
              <div class="col-8">
                <h3 class="mb-0">Form Tambah Produk</h3>
              </div>
            </div>
          </div>
          <div class="card-body">
            <form method="POST" action="{{ url('/pengrajin/produk') }}" enctype="multipart/form-data">
            	@csrf
              <h6 class="heading-small text-muted mb-4">Informasi Produk</h6>
              <div class="pl-lg-4">
                 <div class="row">
                  <div class="col-md-12">
                    <div class="form-group focused">
                      <label class="form-control-label" for="nama">Nama Produk</label>
                      <input required="" id="nama" name="nama" class="form-control form-control-alternative" placeholder="Masukan nama produk" @error('nama') style="border: 1px solid red" @enderror value="{{ old('nama') }}" type="text">

          						@error('nama')
          							<h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          						@enderror
                    </div>
                  </div>
                </div>
                <div class="pl-lg-4">
                 <div class="row">
                  <div class="col-md-12">
                    <div class="form-group focused">
                      <label class="form-control-label" for="nama">Pilih Kategori</label>
                      <select class="form-control" name="categories_id" id="exampleFormControlSelect2">
                      @foreach($categories as $categorie)
                      <option value="{{ $categorie->id }}">{{ $categorie->name }}</option>
                      @endforeach
                      </select>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="weigth">Berat (gram)</label>
                      <input required="" type="number" name="weigth" id="weigth" class="form-control form-control-alternative" @error('weigth') style="border: 1px solid red" @enderror value="{{ old('weigth') }}" placeholder="Masukan Berat (gram)">
                    
            					@error('weigth')
            						<h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
            					@enderror
                    </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="form-control-label" for="price">Harga</label>
                      <input required="" type="number" name="price" id="price" class="form-control form-control-alternative" @error('harga') style="border: 1px solid red" @enderror value="{{ old('harga') }}" placeholder="Masukan harga">
                    
            					@error('harga')
            						<h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
            					@enderror
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group focused">
                      <label class="form-control-label" for="stok">Stok</label>
                      <input required="" id="stok" name="stok" class="form-control form-control-alternative" placeholder="masukan stok" @error('stok') style="border: 1px solid red" @enderror value="{{ old('stok') }}" type="text">
                    
            					@error('stok')
            						<h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
            					@enderror
                    </div>
                  </div>
                </div>
              </div>
              <hr class="my-4">
              <div class="pl-lg-4">
                <div class="row">
                	<div class="col-lg-6">
                	   <div class="form-group focused">
				                <label class="form-control-label" for="image">Foto Produk</label>
				                <input type="file" class="form-control-file" id="image" name="image">
				    
            						@error('image')
            							<h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
            						@enderror
				            </div>
                	</div>
                </div>
                <div class="form-group focused">
                  <label class="form-control-label" for="description">Deskripsi Produk</label>
                  <textarea rows="4" name="description" @error('description') style="border: 1px solid red" @enderror class="form-control form-control-alternative" placeholder="Deskripsi Produk">{{ old('description') }}</textarea>
          				
                  @error('description')
          					<h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          				@enderror
                </div>
                <button type="submit" class="btn btn-primary float-right"><i class="fas fa-plus"></i> Tambah</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
@endsection


@section('script')

	<script>
		const inpFile  = document.getElementById('image');
		const imageSrc = document.querySelector('.row .col-xl-4 .card img.img-thumbnail');
		const profileDefault = document.querySelector('.row .col-xl-4 .card i');

		inpFile.addEventListener('change', function() {
			const file = this.files[0];
			if(file) {
      			const reader = new FileReader()

      			profileDefault.style.display = "none"
      			imageSrc.style.display = "block"

      			reader.addEventListener("load", function() {
      				imageSrc.setAttribute('src', this.result)
      			})

      			reader.readAsDataURL(file)
			}
		})
	</script>
@endsection


