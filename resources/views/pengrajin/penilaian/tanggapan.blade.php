@extends('pengrajin.layout.app')
@section('content')
<div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white mr-2">
                  <i class="mdi mdi-home"></i>
                </span> Dashboard Pengrajin</h3>
              <nav aria-label="breadcrumb">
              </nav>
               <!--begin: Datatable-->
               <table class="datatable datatable-bordered datatable-head-custom" id="kt_datatable">
                                <thead>
                                    <tr>
                                        <th title="Field #1">Tanggal Penilaian</th>
                                        <th title="Field #2">Nama Customer</th>
                                        <th title="Field #3">Email</th>
                                        <th title="Field #5">Pesan</th>
                                        <th title="Field #6">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                    $nomor = 1;
                                    @endphp

                                    @foreach ( $tanggapans AS $row )
                                    <tr>
                                        <td>{{ $row->created_at}}</td>
                                        <td>{{ $row->nama }}</td>
                                        <td>{{ $row->email }}</td>
                                        <td>{{ $row->pesan }}</td>
                                        <td>
                                        <a href="tanggapan/delete/{{ $row->id }}" onclick="return confirm('Apakah anda yakin ingin menghapus {{ $row->nama }}')" class="btn btn-sm btn-light-danger">Hapus</a>
                                        
                                        </td>
                                    </tr>

                                    @php
                                    $nomor++;
                                    @endphp

                                    @endforeach
                                </tbody>
                            </table>
                            <!--end: Datatable-->
                        </div>
                    </div>
                    <!--end::Card-->

                    <!--begin::Subheader-->
                    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
                        <div
                            class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                            <!--begin::Info-->
                            <div class="d-flex align-items-center flex-wrap mr-2">
                                <!--begin::Page Title-->
                                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Data Penilaian</h5>
                                <!--end::Page Title-->

                            </div>
                            <!--end::Info-->
                            <!--begin::Toolbar-->
                            <div class="d-flex align-items-center">


                            </div>
                            </tr>
                          @endforeach
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
@endsection        