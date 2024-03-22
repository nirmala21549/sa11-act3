def parse_invoices(invoice_data)

    invoice_regex = /(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$\d+)/
  
    invoice_data.each_line do |line|
  
      match = line.match(invoice_regex)
      
      if match
        date = match[1]
        invoice_number = match[2]
        client_name = match[3]
        amount = match[4]
        
        puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: #{amount}"
      end
    end
  end
  
  # Sample invoice data containing multiple entries
  invoice_entries = <<-INVOICES
  2023-03-01 - INV001 - Acme Corp - $1000
  2023-03-02 - INV002 - Beta LLC - $2050
  2023-03-03 - INV003 - Gamma Inc - $3500
  INVOICES
  
  parse_invoices(invoice_entries)
  