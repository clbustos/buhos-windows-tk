describe 'adapter_hbase', unstable: true, adapter: :HBase do
  moneta_build do
    Moneta::Adapters::HBase.new(table: 'adapter_hbase')
  end

  moneta_specs ADAPTER_SPECS.without_create
end
