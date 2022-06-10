@extends('pengrajin.layouts.app')
@section('rekap')
  <div class="row">
    <div class="col-lg-7 col-md-9">
        <h1 class="display-2 text-white"><i class="fas fa-shopping-bag"></i> Edit Produk</h1>
      </div>
  </div>
@endsection
@section('content')
	<div class="row">
		<div class="col-md-5">
      <div class="card text-center">
        <i id="imgDefault" style="{{ !is_null($item->gambar) ? 'display: none' : '' }}" class="fas fa-shopping-bag fa-10x pt-5 pb-5"></i>
        <img id="imgSrc" style="{{ is_null($item->gambar) ? 'display: none' : '' }}" class="img-thumbnail img-fluid" src="{{ asset('/storage/.$product->image') }}/{{ $item->gambar }}" alt="Card image cap">
      </div>
		</div>
		<div class="col-md-7">
      <div class="card card-stats mb-4 mb-xl-0">
      <div class="card-body">
      <form method="POST" action="{{ url('/pengrajin/produk') }}/{{ encrypt($item->id) }}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="form-group">
          <label for="nama">Nama Produk</label>
          <input type="text" @error('nama') style="border: 1px solid red" @enderror class="form-control" id="nama" name="nama" value="{{ old('nama') ? old('nama') : $item->nama }}" placeholder="Masukan nama produk">
          
          @error('nama')
            <h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          @enderror
        
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
        <div class="form-group">
          <label for="price">Harga</label>
          <input type="number"  @error('price') style="border: 1px solid red" @enderror class="form-control" id="price" name="price" value="{{ old('price') ? old('price') : $item->price }}" placeholder="Masukan harga produk">
        
          @error('price')
            <h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          @enderror
          
        </div>
        <div class="form-group">
          <label for="weigth">Berat</label>
          <input type="number"  @error('weigth') style="border: 1px solid red" @enderror class="form-control" id="weigth" name="weigth" value="{{ old('weigth') ? old('weigth') : $item->weigth }}" placeholder="Masukan berat produk (gram)">
        
          @error('weigth')
            <h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          @enderror

        </div>
        <div class="form-group">
          <label for="stok">Stok</label>
          <input type="text"  @error('stok') style="border: 1px solid red" @enderror class="form-control" id="stok" name="stok" value="{{ old('stok') ? old('stok') : $item->stok }}" placeholder="Masukan stok produk">
        
          @error('stok')
            <h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          @enderror

        </div>
       <div class="form-group focused">
          <label class="form-control-label" for="gambar">Foto Produk</label>
          <input type="file" class="form-control-file" id="image" name="image">

          @error('image')
            <h5 class="text-danger ml-2 mt-1"> {{ $message }} </h5>
          @enderror
        </div>
        <div class="form-group">
          <label for="description">Deskripsi</label>
          <textarea class="form-control" id="description" name="description" rows="4">{{ old('description') ? old('description') : $item->description }}</textarea>
        </div>
      </div>
        <div class="modal-footer">
          <a href="{{ url('/pengrajin/produk') }}" class="btn btn-secondary" >Kembali</a>
          <button type="submit" class="btn btn-primary">Ubah Produk</button>
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
    const imageSrc = document.getElementById('imgSrc');
    const profileDefault = document.getElementById('imgDefault');

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