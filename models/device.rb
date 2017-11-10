class Device

  def self.open_file
    @xmldoc = Nokogiri::XML(open('data/mini-schema.xml'))
  end

  def self.get_name(name)
    names = Device.open_file.xpath('//name')
    notes = ""
    names.each do |devicename|
      if(devicename == name)
        notes = devicename.parent_element[2].to_xml
      end
    end
    notes
  end

end