module Api
  module V1
    class LocationsController < Api::V1::BaseApisController
      def provinces
        @provinces = Province.all
      end

      def kabupatens
        @kabupatens = Kabupaten.where(province_id: params[:province_id])
      end

      def kecamatans
        @kecamatans = Kecamatan.where(kabupaten_id: params[:kabupaten_id])
      end

      def kelurahans
        @kelurahans = Kelurahan.where(kecamatan_id: params[:kecamatan_id])
      end
    end
  end
end
