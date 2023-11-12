#!/usr/bin/env lua

--[[

# BSD 3-Clause No Military License

Copyright © 2023, Piotr Bajdek. All Rights Reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistribution of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistribution in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

YOU ACKNOWLEDGE THAT THIS SOFTWARE IS NOT DESIGNED, LICENSED OR INTENDED FOR USE IN THE DESIGN, CONSTRUCTION, OPERATION OR MAINTENANCE OF ANY MILITARY FACILITY.

]]

local red = "\27[31m"
local reset = "\27[0m"

function readCSV(filename)
    local file = io.open(filename, "r")
    if not file then
        error("Unable to open the file " .. filename)
    end

    local data = {}

    for line in file:lines() do
        local row = {}

        for value in line:gmatch("[^,]+") do
            table.insert(row, tonumber(value))
        end

        table.insert(data, row)
    end

    file:close()
    return data
end

if #arg ~= 1 or arg[1] == "-h" or arg[1] == "--help" then
    print("Usage: lua wiwaxia.lua filename.csv")
    os.exit(0)
end

if arg[1] == "-v" or arg[1] == "--version" then
    print("v0.1.0")
    os.exit(0)
end

local filename = arg[1]

local csvData = readCSV(filename)

local totalRows = #csvData
local startRow = totalRows - 7

print(red .. "A", "B" .. reset)

for i = startRow, totalRows do
    local row = csvData[i]
    for _, value in ipairs(row) do
        io.write(value, "\t")
    end
    io.write("\n")
end

A_0 = csvData[#csvData][1]
A_1 = csvData[#csvData - 1][1]
A_2 = csvData[#csvData - 2][1]
A_3 = csvData[#csvData - 3][1]
A_4 = csvData[#csvData - 4][1]
A_5 = csvData[#csvData - 5][1]
A_6 = csvData[#csvData - 6][1]
A_7 = csvData[#csvData - 7][1]
A_8 = csvData[#csvData - 8][1]

B_0 = csvData[#csvData][2]
B_1 = csvData[#csvData - 1][2]
B_2 = csvData[#csvData - 2][2]
B_3 = csvData[#csvData - 3][2]
B_4 = csvData[#csvData - 4][2]
B_5 = csvData[#csvData - 5][2]
B_6 = csvData[#csvData - 6][2]
B_7 = csvData[#csvData - 7][2]
B_8 = csvData[#csvData - 8][2]

tr_0_a = A_0 - B_0
tr_0_b = B_0 - A_0
tr_0_c = A_0 - A_1
tr_0_d = A_1 - A_0
tr_0_e = B_0 - B_1
tr_0_f = B_1 - B_0

if tr_0_a >= tr_0_b and tr_0_a >= tr_0_c and tr_0_a >= tr_0_d and tr_0_a >= tr_0_e and tr_0_a >= tr_0_f then
    tr_0 = tr_0_a
elseif tr_0_b >= tr_0_a and tr_0_b >= tr_0_c and tr_0_b >= tr_0_d and tr_0_b >= tr_0_e and tr_0_b >= tr_0_f then
    tr_0 = tr_0_b
elseif tr_0_c >= tr_0_a and tr_0_c >= tr_0_b and tr_0_c >= tr_0_d and tr_0_c >= tr_0_e and tr_0_c >= tr_0_f then
    tr_0 = tr_0_c
elseif tr_0_d >= tr_0_a and tr_0_d >= tr_0_b and tr_0_d >= tr_0_c and tr_0_d >= tr_0_e and tr_0_d >= tr_0_f then
    tr_0 = tr_0_d
elseif tr_0_e >= tr_0_a and tr_0_e >= tr_0_b and tr_0_e >= tr_0_c and tr_0_e >= tr_0_d and tr_0_e >= tr_0_f then
    tr_0 = tr_0_e
elseif tr_0_f >= tr_0_a and tr_0_f >= tr_0_b and tr_0_f >= tr_0_c and tr_0_f >= tr_0_d and tr_0_f >= tr_0_e then
    tr_0 = tr_0_f
end

tr_1_a = A_1 - B_1
tr_1_b = B_1 - A_1
tr_1_c = A_1 - A_2
tr_1_d = A_2 - A_1
tr_1_e = B_1 - B_2
tr_1_f = B_2 - B_1

if tr_1_a >= tr_1_b and tr_1_a >= tr_1_c and tr_1_a >= tr_1_d and tr_1_a >= tr_1_e and tr_1_a >= tr_1_f then
    tr_1 = tr_1_a
elseif tr_1_b >= tr_1_a and tr_1_b >= tr_1_c and tr_1_b >= tr_1_d and tr_1_b >= tr_1_e and tr_1_b >= tr_1_f then
    tr_1 = tr_1_b
elseif tr_1_c >= tr_1_a and tr_1_c >= tr_1_b and tr_1_c >= tr_1_d and tr_1_c >= tr_1_e and tr_1_c >= tr_1_f then
    tr_1 = tr_1_c
elseif tr_1_d >= tr_1_a and tr_1_d >= tr_1_b and tr_1_d >= tr_1_c and tr_1_d >= tr_1_e and tr_1_d >= tr_1_f then
    tr_1 = tr_1_d
elseif tr_1_e >= tr_1_a and tr_1_e >= tr_1_b and tr_1_e >= tr_1_c and tr_1_e >= tr_1_d and tr_1_e >= tr_1_f then
    tr_1 = tr_1_e
elseif tr_1_f >= tr_1_a and tr_1_f >= tr_1_b and tr_1_f >= tr_1_c and tr_1_f >= tr_1_d and tr_1_f >= tr_1_e then
    tr_1 = tr_1_f
end

tr_2_a = A_2 - B_2
tr_2_b = B_2 - A_2
tr_2_c = A_2 - A_3
tr_2_d = A_3 - A_2
tr_2_e = B_2 - B_3
tr_2_f = B_3 - B_2

if tr_2_a >= tr_2_b and tr_2_a >= tr_2_c and tr_2_a >= tr_2_d and tr_2_a >= tr_2_e and tr_2_a >= tr_2_f then
    tr_2 = tr_2_a
elseif tr_2_b >= tr_2_a and tr_2_b >= tr_2_c and tr_2_b >= tr_2_d and tr_2_b >= tr_2_e and tr_2_b >= tr_2_f then
    tr_2 = tr_2_b
elseif tr_2_c >= tr_2_a and tr_2_c >= tr_2_b and tr_2_c >= tr_2_d and tr_2_c >= tr_2_e and tr_2_c >= tr_2_f then
    tr_2 = tr_2_c
elseif tr_2_d >= tr_2_a and tr_2_d >= tr_2_b and tr_2_d >= tr_2_c and tr_2_d >= tr_2_e and tr_2_d >= tr_2_f then
    tr_2 = tr_2_d
elseif tr_2_e >= tr_2_a and tr_2_e >= tr_2_b and tr_2_e >= tr_2_c and tr_2_e >= tr_2_d and tr_2_e >= tr_2_f then
    tr_2 = tr_2_e
elseif tr_2_f >= tr_2_a and tr_2_f >= tr_2_b and tr_2_f >= tr_2_c and tr_2_f >= tr_2_d and tr_2_f >= tr_2_e then
    tr_2 = tr_2_f
end

tr_3_a = A_3 - B_3
tr_3_b = B_3 - A_3
tr_3_c = A_3 - A_4
tr_3_d = A_4 - A_3
tr_3_e = B_3 - B_4
tr_3_f = B_4 - B_3

if tr_3_a >= tr_3_b and tr_3_a >= tr_3_c and tr_3_a >= tr_3_d and tr_3_a >= tr_3_e and tr_3_a >= tr_3_f then
    tr_3 = tr_3_a
elseif tr_3_b >= tr_3_a and tr_3_b >= tr_3_c and tr_3_b >= tr_3_d and tr_3_b >= tr_3_e and tr_3_b >= tr_3_f then
    tr_3 = tr_3_b
elseif tr_3_c >= tr_3_a and tr_3_c >= tr_3_b and tr_3_c >= tr_3_d and tr_3_c >= tr_3_e and tr_3_c >= tr_3_f then
    tr_3 = tr_3_c
elseif tr_3_d >= tr_3_a and tr_3_d >= tr_3_b and tr_3_d >= tr_3_c and tr_3_d >= tr_3_e and tr_3_d >= tr_3_f then
    tr_3 = tr_3_d
elseif tr_3_e >= tr_3_a and tr_3_e >= tr_3_b and tr_3_e >= tr_3_c and tr_3_e >= tr_3_d and tr_3_e >= tr_3_f then
    tr_3 = tr_3_e
elseif tr_3_f >= tr_3_a and tr_3_f >= tr_3_b and tr_3_f >= tr_3_c and tr_3_f >= tr_3_d and tr_3_f >= tr_3_e then
    tr_3 = tr_3_f
end

tr_4_a = A_4 - B_4
tr_4_b = B_4 - A_4
tr_4_c = A_4 - A_5
tr_4_d = A_5 - A_4
tr_4_e = B_4 - B_5
tr_4_f = B_5 - B_4

if tr_4_a >= tr_4_b and tr_4_a >= tr_4_c and tr_4_a >= tr_4_d and tr_4_a >= tr_4_e and tr_4_a >= tr_4_f then
    tr_4 = tr_4_a
elseif tr_4_b >= tr_4_a and tr_4_b >= tr_4_c and tr_4_b >= tr_4_d and tr_4_b >= tr_4_e and tr_4_b >= tr_4_f then
    tr_4 = tr_4_b
elseif tr_4_c >= tr_4_a and tr_4_c >= tr_4_b and tr_4_c >= tr_4_d and tr_4_c >= tr_4_e and tr_4_c >= tr_4_f then
    tr_4 = tr_4_c
elseif tr_4_d >= tr_4_a and tr_4_d >= tr_4_b and tr_4_d >= tr_4_c and tr_4_d >= tr_4_e and tr_4_d >= tr_4_f then
    tr_4 = tr_4_d
elseif tr_4_e >= tr_4_a and tr_4_e >= tr_4_b and tr_4_e >= tr_4_c and tr_4_e >= tr_4_d and tr_4_e >= tr_4_f then
    tr_4 = tr_4_e
elseif tr_4_f >= tr_4_a and tr_4_f >= tr_4_b and tr_4_f >= tr_4_c and tr_4_f >= tr_4_d and tr_4_f >= tr_4_e then
    tr_4 = tr_4_f
end

tr_5_a = A_5 - B_5
tr_5_b = B_5 - A_5
tr_5_c = A_5 - A_6
tr_5_d = A_6 - A_5
tr_5_e = B_5 - B_6
tr_5_f = B_6 - B_5

if tr_5_a >= tr_5_b and tr_5_a >= tr_5_c and tr_5_a >= tr_5_d and tr_5_a >= tr_5_e and tr_5_a >= tr_5_f then
    tr_5 = tr_5_a
elseif tr_5_b >= tr_5_a and tr_5_b >= tr_5_c and tr_5_b >= tr_5_d and tr_5_b >= tr_5_e and tr_5_b >= tr_5_f then
    tr_5 = tr_5_b
elseif tr_5_c >= tr_5_a and tr_5_c >= tr_5_b and tr_5_c >= tr_5_d and tr_5_c >= tr_5_e and tr_5_c >= tr_5_f then
    tr_5 = tr_5_c
elseif tr_5_d >= tr_5_a and tr_5_d >= tr_5_b and tr_5_d >= tr_5_c and tr_5_d >= tr_5_e and tr_5_d >= tr_5_f then
    tr_5 = tr_5_d
elseif tr_5_e >= tr_5_a and tr_5_e >= tr_5_b and tr_5_e >= tr_5_c and tr_5_e >= tr_5_d and tr_5_e >= tr_5_f then
    tr_5 = tr_5_e
elseif tr_5_f >= tr_5_a and tr_5_f >= tr_5_b and tr_5_f >= tr_5_c and tr_5_f >= tr_5_d and tr_5_f >= tr_5_e then
    tr_5 = tr_5_f
end

tr_6_a = A_6 - B_6
tr_6_b = B_6 - A_6
tr_6_c = A_6 - A_7
tr_6_d = A_7 - A_6
tr_6_e = B_6 - B_7
tr_6_f = B_7 - B_6

if tr_6_a >= tr_6_b and tr_6_a >= tr_6_c and tr_6_a >= tr_6_d and tr_6_a >= tr_6_e and tr_6_a >= tr_6_f then
    tr_6 = tr_6_a
elseif tr_6_b >= tr_6_a and tr_6_b >= tr_6_c and tr_6_b >= tr_6_d and tr_6_b >= tr_6_e and tr_6_b >= tr_6_f then
    tr_6 = tr_6_b
elseif tr_6_c >= tr_6_a and tr_6_c >= tr_6_b and tr_6_c >= tr_6_d and tr_6_c >= tr_6_e and tr_6_c >= tr_6_f then
    tr_6 = tr_6_c
elseif tr_6_d >= tr_6_a and tr_6_d >= tr_6_b and tr_6_d >= tr_6_c and tr_6_d >= tr_6_e and tr_6_d >= tr_6_f then
    tr_6 = tr_6_d
elseif tr_6_e >= tr_6_a and tr_6_e >= tr_6_b and tr_6_e >= tr_6_c and tr_6_e >= tr_6_d and tr_6_e >= tr_6_f then
    tr_6 = tr_6_e
elseif tr_6_f >= tr_6_a and tr_6_f >= tr_6_b and tr_6_f >= tr_6_c and tr_6_f >= tr_6_d and tr_6_f >= tr_6_e then
    tr_6 = tr_6_f
end

tr_7_a = A_7 - B_7
tr_7_b = B_7 - A_7
tr_7_c = A_7 - A_8
tr_7_d = A_8 - A_7
tr_7_e = B_7 - B_8
tr_7_f = B_8 - B_7

if tr_7_a >= tr_7_b and tr_7_a >= tr_7_c and tr_7_a >= tr_7_d and tr_7_a >= tr_7_e and tr_7_a >= tr_7_f then
    tr_7 = tr_7_a
elseif tr_7_b >= tr_7_a and tr_7_b >= tr_7_c and tr_7_b >= tr_7_d and tr_7_b >= tr_7_e and tr_7_b >= tr_7_f then
    tr_7 = tr_7_b
elseif tr_7_c >= tr_7_a and tr_7_c >= tr_7_b and tr_7_c >= tr_7_d and tr_7_c >= tr_7_e and tr_7_c >= tr_7_f then
    tr_7 = tr_7_c
elseif tr_7_d >= tr_7_a and tr_7_d >= tr_7_b and tr_7_d >= tr_7_c and tr_7_d >= tr_7_e and tr_7_d >= tr_7_f then
    tr_7 = tr_7_d
elseif tr_7_e >= tr_7_a and tr_7_e >= tr_7_b and tr_7_e >= tr_7_c and tr_7_e >= tr_7_d and tr_7_e >= tr_7_f then
    tr_7 = tr_7_e
elseif tr_7_f >= tr_7_a and tr_7_f >= tr_7_b and tr_7_f >= tr_7_c and tr_7_f >= tr_7_d and tr_7_f >= tr_7_e then
    tr_7 = tr_7_f
end

atr_2 = (tr_0 + tr_1) / 2
atr_3 = (tr_0 + tr_1 + tr_2) / 3
atr_4 = (tr_0 + tr_1 + tr_2 + tr_3) / 4
atr_5 = (tr_0 + tr_1 + tr_3 + tr_3 + tr_4) / 5
atr_6 = (tr_0 + tr_1 + tr_3 + tr_3 + tr_4 + tr_5) / 6
atr_7 = (tr_0 + tr_1 + tr_3 + tr_3 + tr_4 + tr_5 + tr_6) / 7
atr_8 = (tr_0 + tr_1 + tr_3 + tr_3 + tr_4 + tr_5 + tr_6 + tr_7) / 8

A_rwi_2 = (A_0 - B_1) / (atr_2 * math.sqrt(2.0))
A_rwi_3 = (A_0 - B_2) / (atr_3 * math.sqrt(3.0))
A_rwi_4 = (A_0 - B_3) / (atr_4 * math.sqrt(4.0))
A_rwi_5 = (A_0 - B_4) / (atr_5 * math.sqrt(5.0))
A_rwi_6 = (A_0 - B_5) / (atr_6 * math.sqrt(6.0))
A_rwi_7 = (A_0 - B_6) / (atr_7 * math.sqrt(7.0))
A_rwi_8 = (A_0 - B_7) / (atr_8 * math.sqrt(8.0))

B_rwi_2 = (A_1 - B_0) / (atr_2 * math.sqrt(2.0))
B_rwi_3 = (A_2 - B_0) / (atr_3 * math.sqrt(3.0))
B_rwi_4 = (A_3 - B_0) / (atr_4 * math.sqrt(4.0))
B_rwi_5 = (A_4 - B_0) / (atr_5 * math.sqrt(5.0))
B_rwi_6 = (A_5 - B_0) / (atr_6 * math.sqrt(6.0))
B_rwi_7 = (A_6 - B_0) / (atr_7 * math.sqrt(7.0))
B_rwi_8 = (A_7 - B_0) / (atr_8 * math.sqrt(8.0))

if A_rwi_2 >= A_rwi_3 and A_rwi_2 >= A_rwi_4 then
    A4_rwi = A_rwi_2
elseif A_rwi_3 >= A_rwi_2 and A_rwi_3 >= A_rwi_4 then
    A4_rwi = A_rwi_3
elseif A_rwi_4 >= A_rwi_2 and A_rwi_4 >= A_rwi_3 then
    A4_rwi = A_rwi_4
end

if B_rwi_2 >= B_rwi_3 and B_rwi_2 >= B_rwi_4 then
    B4_rwi = B_rwi_2
elseif B_rwi_3 >= B_rwi_2 and B_rwi_3 >= B_rwi_4 then
    B4_rwi = B_rwi_3
elseif B_rwi_4 >= B_rwi_2 and B_rwi_4 >= B_rwi_3 then
    B4_rwi = B_rwi_4
end

if A_rwi_2 >= A_rwi_3 and A_rwi_2 >= A_rwi_4 and A_rwi_2 >= A_rwi_5 and A_rwi_2 >= A_rwi_6 then
    A6_rwi = A_rwi_2
elseif A_rwi_3 >= A_rwi_2 and A_rwi_3 >= A_rwi_4 and A_rwi_3 >= A_rwi_5 and A_rwi_3 >= A_rwi_6 then
    A6_rwi = A_rwi_3
elseif A_rwi_4 >= A_rwi_2 and A_rwi_4 >= A_rwi_3 and A_rwi_4 >= A_rwi_5 and A_rwi_4 >= A_rwi_6 then
    A6_rwi = A_rwi_4
elseif A_rwi_5 >= A_rwi_2 and A_rwi_5 >= A_rwi_3 and A_rwi_5 >= A_rwi_4 and A_rwi_5 >= A_rwi_6 then
    A6_rwi = A_rwi_5
elseif A_rwi_6 >= A_rwi_2 and A_rwi_6 >= A_rwi_3 and A_rwi_6 >= A_rwi_4 and A_rwi_6 >= A_rwi_5 then
    A6_rwi = A_rwi_6
end

if B_rwi_2 >= B_rwi_3 and B_rwi_2 >= B_rwi_4 and B_rwi_2 >= B_rwi_5 and B_rwi_2 >= B_rwi_6 then
    B6_rwi = B_rwi_2
elseif B_rwi_3 >= B_rwi_2 and B_rwi_3 >= B_rwi_4 and B_rwi_3 >= B_rwi_5 and B_rwi_3 >= B_rwi_6 then
    B6_rwi = B_rwi_3
elseif B_rwi_4 >= B_rwi_2 and B_rwi_4 >= B_rwi_3 and B_rwi_4 >= B_rwi_5 and B_rwi_4 >= B_rwi_6 then
    B6_rwi = B_rwi_4
elseif B_rwi_5 >= B_rwi_2 and B_rwi_5 >= B_rwi_3 and B_rwi_5 >= B_rwi_4 and B_rwi_5 >= B_rwi_6 then
    B6_rwi = B_rwi_5
elseif B_rwi_6 >= B_rwi_2 and B_rwi_6 >= B_rwi_3 and B_rwi_6 >= B_rwi_4 and B_rwi_6 >= B_rwi_5 then
    B6_rwi = B_rwi_6
end

if
    A_rwi_2 >= A_rwi_3
    and A_rwi_2 >= A_rwi_4
    and A_rwi_2 >= A_rwi_5
    and A_rwi_2 >= A_rwi_6
    and A_rwi_2 >= A_rwi_7
    and A_rwi_2 >= A_rwi_8
then
    A8_rwi = A_rwi_2
elseif
    A_rwi_3 >= A_rwi_2
    and A_rwi_3 >= A_rwi_4
    and A_rwi_3 >= A_rwi_5
    and A_rwi_3 >= A_rwi_6
    and A_rwi_3 >= A_rwi_7
    and A_rwi_3 >= A_rwi_8
then
    A8_rwi = A_rwi_3
elseif
    A_rwi_4 >= A_rwi_2
    and A_rwi_4 >= A_rwi_3
    and A_rwi_4 >= A_rwi_5
    and A_rwi_4 >= A_rwi_6
    and A_rwi_4 >= A_rwi_7
    and A_rwi_4 >= A_rwi_8
then
    A8_rwi = A_rwi_4
elseif
    A_rwi_5 >= A_rwi_2
    and A_rwi_5 >= A_rwi_3
    and A_rwi_5 >= A_rwi_4
    and A_rwi_5 >= A_rwi_6
    and A_rwi_5 >= A_rwi_7
    and A_rwi_5 >= A_rwi_8
then
    A8_rwi = A_rwi_5
elseif
    A_rwi_6 >= A_rwi_2
    and A_rwi_6 >= A_rwi_3
    and A_rwi_6 >= A_rwi_4
    and A_rwi_6 >= A_rwi_5
    and A_rwi_6 >= A_rwi_7
    and A_rwi_6 >= A_rwi_8
then
    A8_rwi = A_rwi_6
elseif
    A_rwi_7 >= A_rwi_2
    and A_rwi_7 >= A_rwi_3
    and A_rwi_7 >= A_rwi_4
    and A_rwi_7 >= A_rwi_5
    and A_rwi_7 >= A_rwi_6
    and A_rwi_7 >= A_rwi_8
then
    A8_rwi = A_rwi_7
elseif
    A_rwi_8 >= A_rwi_2
    and A_rwi_8 >= A_rwi_3
    and A_rwi_8 >= A_rwi_4
    and A_rwi_8 >= A_rwi_5
    and A_rwi_8 >= A_rwi_6
    and A_rwi_8 >= A_rwi_7
then
    A8_rwi = A_rwi_8
end

if
    B_rwi_2 >= B_rwi_3
    and B_rwi_2 >= B_rwi_4
    and B_rwi_2 >= B_rwi_5
    and B_rwi_2 >= B_rwi_6
    and B_rwi_2 >= B_rwi_7
    and B_rwi_2 >= B_rwi_8
then
    B8_rwi = B_rwi_2
elseif
    B_rwi_3 >= B_rwi_2
    and B_rwi_3 >= B_rwi_4
    and B_rwi_3 >= B_rwi_5
    and B_rwi_3 >= B_rwi_6
    and B_rwi_3 >= B_rwi_7
    and B_rwi_3 >= B_rwi_8
then
    B8_rwi = B_rwi_3
elseif
    B_rwi_4 >= B_rwi_2
    and B_rwi_4 >= B_rwi_3
    and B_rwi_4 >= B_rwi_5
    and B_rwi_4 >= B_rwi_6
    and B_rwi_4 >= B_rwi_7
    and B_rwi_4 >= B_rwi_8
then
    B8_rwi = B_rwi_4
elseif
    B_rwi_5 >= B_rwi_2
    and B_rwi_5 >= B_rwi_3
    and B_rwi_5 >= B_rwi_4
    and B_rwi_5 >= B_rwi_6
    and B_rwi_5 >= B_rwi_7
    and B_rwi_5 >= B_rwi_8
then
    B8_rwi = B_rwi_5
elseif
    B_rwi_6 >= B_rwi_2
    and B_rwi_6 >= B_rwi_3
    and B_rwi_6 >= B_rwi_4
    and B_rwi_6 >= B_rwi_5
    and B_rwi_6 >= B_rwi_7
    and B_rwi_6 >= B_rwi_8
then
    B8_rwi = B_rwi_6
elseif
    B_rwi_7 >= B_rwi_2
    and B_rwi_7 >= B_rwi_3
    and B_rwi_7 >= B_rwi_4
    and B_rwi_7 >= B_rwi_5
    and B_rwi_7 >= B_rwi_6
    and B_rwi_7 >= B_rwi_8
then
    B8_rwi = B_rwi_7
elseif
    B_rwi_8 >= B_rwi_2
    and B_rwi_8 >= B_rwi_3
    and B_rwi_8 >= B_rwi_4
    and B_rwi_8 >= B_rwi_5
    and B_rwi_8 >= B_rwi_6
    and B_rwi_8 >= B_rwi_7
then
    B8_rwi = B_rwi_8
end

print("")
print(red .. "A" .. reset .. " 4 = ", A4_rwi)
print(red .. "B" .. reset .. " 4 = ", B4_rwi)
print("")
print(red .. "A" .. reset .. " 6 = ", A6_rwi)
print(red .. "B" .. reset .. " 6 = ", B6_rwi)
print("")
print(red .. "A" .. reset .. " 8 = ", A8_rwi)
print(red .. "B" .. reset .. " 8 = ", B8_rwi)
