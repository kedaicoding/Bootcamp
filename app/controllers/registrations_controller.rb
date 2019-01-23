class RegistrationsController < ApplicationController

    def index
        @registrations = Registration.all
    end
    
    
    def new
        @registration = Registration.new
    end

    def create
        @registration = Registration.new(registration_params)
        
        if @registration.save
            flash[:success] = "Terimakasih sudah mendaftar di bootcamp kami"
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    private

    def registration_params
        params.require(:registration).permit(:nama_lengkap, :pekerjaan, :nama_instansi, :email, :nomor_handphone, :alamat)
    end    
    
end
