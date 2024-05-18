function dung(Lib, Offset, Replaced) local info = gg.getTargetInfo() localpack = info.nativeLibraryDir local t = gg.getRangesList(localpack..'/lib'..Lib..'.so') for _, __ in pairs(t) do local t = gg.getValues({{address = __.start, flags = gg.TYPE_DWORD}, {address = __.start + 18, flags = gg.TYPE_WORD}}) if t[1].value == 1179403647 then Offset = __['start'] + Offset end assert(Offset ~= nil, '[rwmem]: error, provided address is nil.') _rw = {} if type(Replaced) == 'number' then _ = '' for _ = 1, Replaced do _rw[_] = {address = (Offset - 1) + _, flags = gg.TYPE_BYTE} end for v, __ in ipairs(gg.getValues(_rw)) do _ = _ .. string.format('%02X', __.value & 255) end return _ end Byte = {} Replaced:gsub('..', function(x) Byte[#Byte + 1] = x _rw[#Byte] = {address = (Offset - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. 'h'} end) gg.setValues(_rw) end end
function On()local Ton Ton = gg Ton = Ton.toast Ton("✔️ Oɴ ✔️")end
function Off()local Toff Toff = gg Toff = Toff.toast Toff("❌ Oғғ ❌")end 
function Hung(A1_028, A0_031, A2_121)
local info = gg.getTargetInfo() 
localpack = info.nativeLibraryDir
local t = gg.getRangesList(localpack..'/'..A1_028) for _, __ in pairs(t)
do local t = gg.getValues({{
    address = __.start, flags = gg.TYPE_DWORD
}, {
    address = __.start + 18, flags = gg.TYPE_WORD
}}) if t[1].value == 1179403647
then A0_031 = __['start'] + A0_031
end
assert(A0_031 ~= nil, '[rwmem]: error, provided address is nil.') _rw = {}
if type(A2_121) == 'number'
then _ = ''
for _ = 1, A2_121
do _rw[_] = {
    address = (A0_031 - 1) + _, flags = gg.TYPE_BYTE
}
end
for v, __ in ipairs(gg.getValues(_rw))
do _ = _ .. string.format('%02X', __.value & 255)
end
return _
end
Byte = {} A2_121:gsub('..', 
function(x) Byte[#Byte + 1] = x _rw[#Byte] = {
        address = (A0_031 - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. 'h'
    } end)
gg.setValues(_rw)
end
end
function Main()
A = gg.multiChoice({
"Aim Ống Ngắm",
"ANTENA Tay[Sảnh]",
"AIM 180°✔",
"AIM ĐẦU[ Bật Login]",
"Chạy Nhanh Không Die",
"THOÁT"
}, nil,'Script Dũng VN')
if A == nil then else
if A[1] == true then A1() end
if A[2] == true then A2() end
if A[3] == true then A3() end
if A[4] == true then A4() end
if A[5] == true then A5() end
if A[6] == true then Exit() end
end
XGCK = -1
end
function A1()

gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":0x3E331E0;0x3E331E0;0xB72461E0", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll(":Headb", gg.TYPE_BYTE)
gg.clearResults()
gg.toast(" ʜᴇᴀᴅꜱʜᴏᴛ ᴏɴ ")
end

function A2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0F;0.00097126886F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.12216301262F;0F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()

gg.toast("✓ Antena Tay ✓")
end
function A3()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1057048494;1054951342;1053273620", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20000)
  gg.editAll("-20000", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1.30928164e25;-3.69511377e20;1.25206298e-38;0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.processResume()
gg.toast("✓ Ghim Tâm 180° ✓")
end
function A4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":_Hipsb", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll(":_Headb", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("HÉT SÓT ĐẦU BẬT")
end 

function A5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.80259693e-44F;1.20000004768F;0.18000000715F;1.40129846e-45F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.780", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Đã Bật Chạy Nhanh Không Die")
gg.alert(" Cách Dùng \n Chạy Nhanh Không Die Chỉ Tác Dụng Khi Trên Tay Không Cầm G👍👍👍👍👍👍👍👍👍👍👍👍👍🙂👍👍😘🙂😘😭👈😭😃😭🙃😭🙃🙂😏🙂😍😃🤩😗😍😙😍ì ")
end


function Exit()
os.exit()
end
while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then Main() end
end
