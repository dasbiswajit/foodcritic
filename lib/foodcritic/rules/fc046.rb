rule "FC046", "Attribute assignment uses assign unless nil" do
  attributes do |ast|
    attribute_access(ast).map do |a|
      a.xpath('ancestor::opassign/op[@value="||="]')
    end
  end
end
