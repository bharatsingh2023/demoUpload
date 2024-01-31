select plant from pricing_tool.zst_lu_plant_mattyp where material_type = 'ADDT'


select ekko.matnr, ekko.werks, ekko.ebeln,ekko.ebelp, ekko.bsart, ekko.mtart, ekko.aedat, ekko.loekz 
from pricing_tool.ym_po_det_rfc_ho_lubes as ekko 
where ekko.bsart in ('WK', 'MK') and ekko.mtart in ('ADDT')
and ekko.werks in (select plant from pricing_tool.zst_lu_plant_mattyp where material_type = 'ADDT') 
and ekko.bstyp = 'K' and (ekko.aedat between '2022-03-10' and '2022-06-30') and 
(ekko.loekz is null or ekko.loekz = '')

-- EKPO-EBELN (Purchasing Doc.) & EKPO-EBELP (Item) from table EKPO by passing 
-- EKPO-EBELN (Purchasing Doc.) = EKPO-KONNR (Agreement) & EKPO-EBELP (Item) = EKPO-KTPNR (Agreement item) & 
-- EKPO-LOEKZ (Deletion ind.) = Blank.

select ekko.ebeln,ekko.ebelp from pricing_tool.ym_po_det_rfc_ho_lubes as ekko 
where ekko.konnr = '27821524' and ekko.ktpnr = '10' 
and ekko.loekz is null

select * from pricing_tool.ym_po_det_rfc_ho_lubes
	
select ekko.waers from pricing_tool.ym_po_det_rfc_ho_lubes as ekko 
where ekko.ebeln = '27821524'

select ekko.menge,ekko.bstme from pricing_tool.ym_po_det_rfc_ho_lubes as ekko where 
ekko.ebeln= '27906751' and ekko.ebelp = '10' and ekko.matnr = '1000400' and ekko.werks = '1140'

