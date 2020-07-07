title 'Regressions for 5131'

control 'regression-5131' do
  describe input(:my_input) do
    it { should eq 'ab=cde' }
  end
end
