require 'spec_helper'

describe 'mcollective' do
  let(:facts) { { :osfamily => 'RedHat' } }

  context '#version' do
    context "default" do
      it { should contain_package('mcollective').with_ensure('present') }
    end

    context "set" do
      let(:params) { { :version => '1.21' } }
      it { should contain_package('mcollective').with_ensure('1.21') }
    end
  end

  context '#enterprise' do
    context "default (false)" do
      it { should contain_service('mcollective').with_name('mcollective') }
    end

    context 'true' do
      let(:params) { { :enterprise => true } }
      it { should contain_service('mcollective').with_name('pe-mcollective') }
    end
  end

  context '#manage_packages' do
    context "default (true)" do
      it { should contain_package('mcollective') }
    end

    context "false" do
      let(:params) { { :manage_packages => false } }
      it { should_not contain_package('mcollective') }
    end
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
