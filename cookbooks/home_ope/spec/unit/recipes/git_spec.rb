require 'spec_helper'

describe 'home_ope::git' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.6.1804')
    runner.converge(described_recipe)
  end

  it 'install git' do
    expect(chef_run).to install_yum_package('git')
  end
end
