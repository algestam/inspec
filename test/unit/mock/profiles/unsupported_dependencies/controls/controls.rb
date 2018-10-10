control 'tmp-1.0' do
  impact 0.7
  title 'Create /tmp directory'
  desc 'An optional description...'
  describe file('/tmp') do
    it { should be_directory }
  end
end

require_controls 'child_profile' do
  control 'require-01'
  control 'require-02' do
    impact 9
  end
end

include_controls 'child_profile2' do
  control 'include-01' do
    impact 7
  end
end