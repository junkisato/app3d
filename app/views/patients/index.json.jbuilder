json.array! @patients do |patient|
json.id patient.id
json.name patient.name
json.kana_name patient.kana_name
json.responsible_id patient.responsible_id
end