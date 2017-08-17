# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.me/me/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.me.rb'

describe Whois::Parsers::WhoisNicMe, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.me/me/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("Access to WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the registry database. The data in this record is provided by The Registry Operator for informational purposes only, and accuracy is not guaranteed.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Registry Operator reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.me")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("D108500000000011599-AGRS")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited", "clientTransferProhibited https://icann.org/epp#clientTransferProhibited", "clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited", "serverDeleteProhibited https://icann.org/epp#serverDeleteProhibited", "serverTransferProhibited https://icann.org/epp#serverTransferProhibited", "serverUpdateProhibited https://icann.org/epp#serverUpdateProhibited"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2008-06-13 17:17:40 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2017-05-12 09:27:09 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2018-06-13 17:17:40 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("292")
      expect(subject.registrar.name).to eq("MarkMonitor Inc.")
      expect(subject.registrar.organization).to eq(nil)
      expect(subject.registrar.url).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("C4422259-AGRS")
      expect(subject.registrant_contacts[0].name).to eq("DNS Admin")
      expect(subject.registrant_contacts[0].organization).to eq("Google Inc.")
      expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.registrant_contacts[0].city).to eq("Mountain View")
      expect(subject.registrant_contacts[0].zip).to eq("94043")
      expect(subject.registrant_contacts[0].state).to eq("CA")
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.6502530000")
      expect(subject.registrant_contacts[0].fax).to eq("+1.6502530001")
      expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("C4422259-AGRS")
      expect(subject.admin_contacts[0].name).to eq("DNS Admin")
      expect(subject.admin_contacts[0].organization).to eq("Google Inc.")
      expect(subject.admin_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.admin_contacts[0].city).to eq("Mountain View")
      expect(subject.admin_contacts[0].zip).to eq("94043")
      expect(subject.admin_contacts[0].state).to eq("CA")
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.6502530000")
      expect(subject.admin_contacts[0].fax).to eq("+1.6502530001")
      expect(subject.admin_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("C4422259-AGRS")
      expect(subject.technical_contacts[0].name).to eq("DNS Admin")
      expect(subject.technical_contacts[0].organization).to eq("Google Inc.")
      expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.technical_contacts[0].city).to eq("Mountain View")
      expect(subject.technical_contacts[0].zip).to eq("94043")
      expect(subject.technical_contacts[0].state).to eq("CA")
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.6502530000")
      expect(subject.technical_contacts[0].fax).to eq("+1.6502530001")
      expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(4)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.google.com")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.google.com")
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns4.google.com")
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns3.google.com")
    end
  end
end
