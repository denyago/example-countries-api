describe Country do
  it { expect(subject).to have_db_column(:code).of_type(:string)}
  it { expect(subject).to have_db_column(:name).of_type(:string)}
  it { expect(subject).to have_db_column(:is_in_eu).of_type(:boolean)}
  it { expect(subject).to have_db_column(:continent).of_type(:string)}
  it { expect(subject).to have_db_column(:vat).of_type(:float)}
  it { expect(subject).to have_db_column(:calling_code).of_type(:string)}
  it { expect(subject).to have_db_column(:default_language).of_type(:string)}
  it { expect(subject).to have_db_column(:currency).of_type(:string)}
end
