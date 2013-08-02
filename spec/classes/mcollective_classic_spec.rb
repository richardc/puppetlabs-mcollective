require 'spec_helper'

describe 'mcollective' do
  context '#version' do
    let(:facts) { { :osfamily => 'RedHat' } }
    context "default (unset)" do
      it { should contain_package('mcollective').with_ensure('present') }
    end

    context "set" do
      let(:params) { { :version => '1.21' } }
      it { should contain_package('mcollective').with_ensure('1.21') }
    end
  end

  context '#enterprise' do
    pending
  end

  context '#manage_packages' do
    pending
  end

  context '#manage_plugins' do
    pending
  end

  context '#server' do
    pending
  end

  context '#server_config' do
    pending
  end

  context '#server_config_file' do
    pending
  end

  context '#client' do
    pending
  end

  context '#client_config' do
    pending
  end

  context '#client_config_file' do
    pending
  end

  context '#main_collective' do
    pending
  end

  context '#collectives' do
    pending
  end

  context '#connector' do
    pending
  end

  context '#classesfile' do
    pending
  end

  context '#stomp_pool' do
    pending
  end

  context '#stomp_server' do
    pending
  end

  context '#stomp_user' do
    pending
  end

  context '#stomp_password' do
    pending
  end

  context '#mc_security_provider' do
    pending
  end

  context '#mc_security_psk' do
    pending
  end

  context '#fact_source' do
    pending
  end

  context '#yaml_facter_source' do
    pending
  end

  context '#plugin_params' do
    pending
  end
end
