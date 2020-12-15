import AQFED.Random

@testset "MT64FirstNumbers" begin
    init = UInt64.([ 0x12345, 0x23456, 0x34567, 0x45678])
    gen = AQFED.Random.MersenneTwister64(init)
    println("1000 outputs of UInt64")
      for i=1:1000
          print(" " ,rand(gen,UInt64))
          if (i % 5 == 4)
              println()
          end
      end
      #numbers comming from reference C implementation
      referenceNumbers = [0.35252031, 0.51052342, 0.79771733, 0.39300273, 0.27216673,
0.72151068, 0.43144703, 0.38522290, 0.20270676, 0.58227313,
0.80812143, 0.83767297, 0.92401619, 0.84065425, 0.00852052,
0.13975395, 0.35250930, 0.71196972, 0.14627395, 0.17775331,
0.61046382, 0.49623272, 0.23292425, 0.25038837, 0.04380664,
0.43275994, 0.74540936, 0.33830700, 0.68832616, 0.68744230,
0.63626548, 0.85932936, 0.37089670, 0.50756304, 0.69925960,
0.83481025, 0.09053196, 0.09523253, 0.17783108, 0.78027239,
0.70071054, 0.51879252, 0.83027285, 0.92895011, 0.72144803,
0.18868644, 0.83655674, 0.20358945, 0.99852143, 0.88340103,
0.46729949, 0.96993433, 0.00162682, 0.46829774, 0.59080423,
0.54921999, 0.42516462, 0.54952196, 0.99534722, 0.04473888,
0.71139235, 0.91881407, 0.33781561, 0.45746234, 0.78292126,
0.69206723, 0.66175448, 0.07091147, 0.18179208, 0.38168454,
0.38819527, 0.42452711, 0.22732724, 0.16191307, 0.36842667,
0.13060083, 0.68833248, 0.60498705, 0.19195304, 0.26628584,
0.17030858, 0.23892426, 0.38430236, 0.28034283, 0.76069020,
0.21560653, 0.78101667, 0.90847812, 0.06467974, 0.18487868,
0.23570471, 0.29475460, 0.65563767, 0.10066446, 0.57272419,
0.88731391, 0.60650995, 0.96346079, 0.32940100, 0.29977746,
0.03798193, 0.18026822, 0.22402746, 0.45480119, 0.98114604,
0.25800668, 0.94362433, 0.17901062, 0.36019313, 0.45933644,
0.68309457, 0.28175454, 0.00774729, 0.77054527, 0.99723413,
0.59807532, 0.10294164, 0.32429228, 0.54928986, 0.18410980,
0.08441555, 0.14230333, 0.58892064, 0.94030475, 0.35378784,
0.77584320, 0.71222448, 0.83565208, 0.47309248, 0.23810761,
0.74408520, 0.08891527, 0.09729786, 0.38377368, 0.05092308,
0.69065638, 0.10449489, 0.45050670, 0.92209534, 0.80083714,
0.27902692, 0.26897142, 0.50650468, 0.80111472, 0.54590012,
0.96406097, 0.63779553, 0.81054357, 0.75369248, 0.47473037,
0.89100315, 0.89395984, 0.09985519, 0.34087631, 0.22293557,
0.24375510, 0.31764191, 0.04076993, 0.06160830, 0.41333434,
0.11883030, 0.04548820, 0.01008040, 0.25336184, 0.07325432,
0.49860151, 0.07148695, 0.89483338, 0.87054457, 0.15116809,
0.59650469, 0.47487776, 0.43490298, 0.36684681, 0.16470796,
0.76865078, 0.42920071, 0.20545481, 0.87615922, 0.80332404,
0.36462506, 0.49571309, 0.51904488, 0.15534589, 0.43719893,
0.16562157, 0.37290862, 0.91842631, 0.21310523, 0.87849154,
0.18532269, 0.81713354, 0.52182344, 0.51845619, 0.96261204,
0.18758718, 0.68897600, 0.61484764, 0.46752993, 0.05865458,
0.11614359, 0.90386866, 0.45781805, 0.70649579, 0.50917048,
0.21210656, 0.97818608, 0.00788342, 0.61375222, 0.67366318,
0.24197878, 0.66177985, 0.10463932, 0.67390799, 0.50025262,
0.88332650, 0.77966851, 0.13403622, 0.54357114, 0.97664854,
0.06540961, 0.24013176, 0.67234032, 0.91347883, 0.35486839,
0.87207865, 0.43036581, 0.23652488, 0.81238450, 0.72058432,
0.42239916, 0.80265764, 0.03552838, 0.61939480, 0.50972420,
0.21053832, 0.59952743, 0.36821802, 0.45659617, 0.12529468,
0.76941623, 0.99878168, 0.08602783, 0.81825937, 0.39350710,
0.86090923, 0.36090230, 0.75628888, 0.45036982, 0.44602266,
0.20595631, 0.62241953, 0.36777732, 0.47523727, 0.50248178,
0.73570362, 0.48237781, 0.45590948, 0.73580783, 0.96403851,
0.94586342, 0.48819868, 0.48102038, 0.94618182, 0.90279924,
0.78396650, 0.85182389, 0.92149394, 0.32679198, 0.83554856,
0.28320609, 0.34598409, 0.82090005, 0.40177958, 0.38888785,
0.77873931, 0.23297931, 0.75329335, 0.30770340, 0.71417540,
0.68939065, 0.36577776, 0.50784857, 0.50928090, 0.02552055,
0.85999075, 0.26692089, 0.01402799, 0.67550392, 0.48305605,
0.74608351, 0.63408891, 0.58904230, 0.44337996, 0.42174728,
0.74041679, 0.72719148, 0.19801992, 0.66263633, 0.10381594,
0.32818760, 0.68369661, 0.56076212, 0.68681921, 0.91616269,
0.39836106, 0.39685027, 0.97507945, 0.91010563, 0.27447360,
0.95538357, 0.76758522, 0.60091060, 0.37734461, 0.82948248,
0.06598078, 0.50147615, 0.08417763, 0.18910044, 0.51661735,
0.55011011, 0.64888175, 0.82986845, 0.15126656, 0.92649390,
0.25494941, 0.73275293, 0.94184393, 0.84755226, 0.45921936,
0.72934054, 0.43722403, 0.34305596, 0.10827860, 0.29026676,
0.01935431, 0.46668573, 0.83247509, 0.26349603, 0.01938542,
0.43222250, 0.18109983, 0.29337450, 0.16721917, 0.94751650,
0.67795254, 0.56666228, 0.20699452, 0.23247262, 0.19138610,
0.73495506, 0.85893600, 0.83411526, 0.93689655, 0.91804752,
0.99352333, 0.03207550, 0.28386071, 0.48029543, 0.18736013,
0.31736452, 0.72542230, 0.57530912, 0.04229918, 0.84798296,
0.21886935, 0.98655615, 0.52243102, 0.22611020, 0.42975741,
0.21726739, 0.10912048, 0.96684473, 0.01092456, 0.12461901,
0.57989070, 0.39848707, 0.06330277, 0.62826828, 0.01159081,
0.23157320, 0.64690912, 0.44876902, 0.04463930, 0.18933780,
0.21284518, 0.61363480, 0.67144845, 0.38625586, 0.75719122,
0.40361050, 0.26708873, 0.54534727, 0.90174015, 0.58654140,
0.44885346, 0.35505544, 0.65317830, 0.26074572, 0.39472912,
0.54366914, 0.75020660, 0.76113614, 0.24595582, 0.03941247,
0.60356153, 0.23615721, 0.01603475, 0.72432457, 0.39837424,
0.04195329, 0.81561058, 0.34208440, 0.00513953, 0.92826234,
0.11410393, 0.86692030, 0.25238726, 0.98258626, 0.53353856,
0.72269001, 0.71850984, 0.66829681, 0.03540769, 0.01676450,
0.23557835, 0.78758497, 0.85969589, 0.14673207, 0.28013860,
0.17796942, 0.69924087, 0.44663597, 0.62112513, 0.44079883,
0.48995231, 0.18411497, 0.18440877, 0.74016388, 0.28845694,
0.22969080, 0.76851164, 0.15551473, 0.28980810, 0.40906710,
0.47619039, 0.72611392, 0.55802939, 0.69365597, 0.85736313,
0.83343150, 0.21324760, 0.45327806, 0.33053855, 0.98198279,
0.53279389, 0.76877035, 0.20548656, 0.37065042, 0.59026910,
0.67418036, 0.23585843, 0.98156397, 0.27849804, 0.56198954,
0.68752287, 0.30073445, 0.69348664, 0.72515585, 0.40629047,
0.09320027, 0.24334978, 0.91407662, 0.97226538, 0.33904970,
0.01717092, 0.60155725, 0.03001652, 0.50979706, 0.80531036,
0.17450719, 0.84984399, 0.00498130, 0.51636405, 0.14080868,
0.62289701, 0.07853030, 0.70567541, 0.79844050, 0.63766566,
0.03559031, 0.40994535, 0.08423996, 0.00389626, 0.50608347,
0.19622681, 0.90537903, 0.75458034, 0.75102094, 0.81491673,
0.92925931, 0.38074332, 0.54817053, 0.72593246, 0.02146791,
0.57990460, 0.87921074, 0.59913886, 0.66726893, 0.24269154,
0.73344575, 0.71826052, 0.92313935, 0.05212996, 0.93771536,
0.69489385, 0.57581887, 0.48106155, 0.06808800, 0.33633940,
0.69142320, 0.46566781, 0.70654143, 0.16541368, 0.76257631,
0.82777900, 0.62958327, 0.34757935, 0.10891487, 0.79912728,
0.01156543, 0.23111261, 0.58535640, 0.87461956, 0.21723454,
0.80409615, 0.33169686, 0.72800785, 0.31218099, 0.13729737,
0.41637635, 0.01234597, 0.58313811, 0.66746028, 0.05105595,
0.14930937, 0.56044864, 0.76196851, 0.98800104, 0.37075949,
0.88740864, 0.40697115, 0.96598278, 0.86013661, 0.85386784,
0.23986516, 0.39027464, 0.59593927, 0.00161530, 0.31768197,
0.65702729, 0.66461914, 0.62937471, 0.92120758, 0.87578958,
0.37539860, 0.59182615, 0.12092214, 0.55130437, 0.86365117,
0.38725162, 0.28757657, 0.42803199, 0.39014405, 0.50253853,
0.85306128, 0.92018995, 0.71421618, 0.54236780, 0.96221157,
0.22956898, 0.96519876, 0.06694102, 0.11915854, 0.01354308,
0.24720070, 0.71671739, 0.00604305, 0.65012352, 0.71151390,
0.46616159, 0.99228224, 0.20684576, 0.62941006, 0.84535326,
0.30678993, 0.55264568, 0.50094784, 0.39409122, 0.15479416,
0.36536318, 0.51925656, 0.65567178, 0.67255519, 0.55089659,
0.42194295, 0.27172413, 0.79540954, 0.71594806, 0.88372598,
0.29179452, 0.66411306, 0.57064687, 0.42494633, 0.73389255,
0.12097313, 0.53338622, 0.38493233, 0.79348021, 0.01851341,
0.58594454, 0.88396240, 0.04410730, 0.67419924, 0.62770011,
0.64644200, 0.40335135, 0.17952644, 0.55564678, 0.56643922,
0.37715015, 0.87092180, 0.56726159, 0.34011210, 0.13661819,
0.11474177, 0.93930097, 0.48549077, 0.28484289, 0.13374371,
0.40966056, 0.73662873, 0.37355323, 0.65216092, 0.27372469,
0.56032082, 0.14882684, 0.95462890, 0.17090266, 0.92374766,
0.98368259, 0.68448367, 0.02872548, 0.68598279, 0.04601084,
0.17170501, 0.08906644, 0.23730372, 0.02929037, 0.38566261,
0.68957569, 0.53021050, 0.44200157, 0.32085701, 0.72520053,
0.17454174, 0.19676599, 0.88243877, 0.87030228, 0.15124486,
0.78670160, 0.51731632, 0.56674531, 0.20910664, 0.84962640,
0.05220467, 0.91783159, 0.19138968, 0.68126378, 0.79574471,
0.14910848, 0.28030331, 0.98067264, 0.31263980, 0.67448964,
0.69266650, 0.40033551, 0.22789781, 0.78317066, 0.55815261,
0.11247054, 0.47337901, 0.46310033, 0.53192452, 0.56164078,
0.41750378, 0.43880622, 0.69739327, 0.11092778, 0.18333765,
0.67222441, 0.12789170, 0.88316806, 0.37891271, 0.14935268,
0.64522185, 0.93902079, 0.62481092, 0.21794927, 0.71535266,
0.62169579, 0.65147153, 0.01411645, 0.96413465, 0.01021578,
0.50605180, 0.51595053, 0.03308040, 0.01497870, 0.07809658,
0.35743383, 0.58079701, 0.11785557, 0.89568677, 0.38793964,
0.37117709, 0.13994133, 0.11032813, 0.99998594, 0.06695042,
0.79774786, 0.11093584, 0.23879095, 0.85918615, 0.16109636,
0.63479696, 0.75023359, 0.29061187, 0.53764772, 0.30652318,
0.51387302, 0.81620973, 0.82433610, 0.18302488, 0.79048957,
0.07598187, 0.27887732, 0.37061042, 0.36441016, 0.93736882,
0.77480946, 0.02269132, 0.40309874, 0.16427650, 0.13969296,
0.57605029, 0.00242426, 0.56626691, 0.84390990, 0.87455806,
0.12321023, 0.87561663, 0.60431578, 0.35880839, 0.50426282,
0.50697689, 0.06631164, 0.14976092, 0.89356018, 0.91473662,
0.04235237, 0.50073724, 0.75969690, 0.91743994, 0.79352335,
0.58078351, 0.91819984, 0.53520520, 0.18267367, 0.05608828,
0.68315721, 0.27264599, 0.41245634, 0.69706222, 0.69666203,
0.08967342, 0.64081905, 0.22576796, 0.69315628, 0.53981640,
0.76059129, 0.56712344, 0.94318621, 0.44081094, 0.31699284,
0.29477911, 0.80069824, 0.28366921, 0.96718081, 0.85345644,
0.11681215, 0.47600710, 0.33448255, 0.31217271, 0.35469241,
0.59511650, 0.49583692, 0.48922303, 0.20215259, 0.60159380,
0.17882055, 0.77601258, 0.71020391, 0.41833503, 0.71522856,
0.87534517, 0.43703394, 0.43056077, 0.64828071, 0.43069441,
0.39356849, 0.32063367, 0.92788963, 0.16878266, 0.56762591,
0.56042446, 0.84958464, 0.79408949, 0.08220340, 0.13922856,
0.82529019, 0.27134959, 0.00278080, 0.66192389, 0.01782933,
0.95404763, 0.50787645, 0.85320521, 0.83690362, 0.83771227,
0.46268665, 0.31716742, 0.01716647, 0.68264674, 0.01789888,
0.30446846, 0.14942271, 0.26982182, 0.74933947, 0.50394161,
0.78444542, 0.40009256, 0.40333422, 0.16627342, 0.01898760,
0.04221829, 0.77960213, 0.66230976, 0.56015996, 0.49535426,
0.38536259, 0.40406773, 0.99930568, 0.00857945, 0.16158390,
0.64805163, 0.20237524, 0.59106326, 0.76968277, 0.96887042,
0.29264851, 0.97373775, 0.16767633, 0.33014482, 0.27426548,
0.10947014, 0.75920652, 0.37757457, 0.13125207, 0.00826451,
0.96684342, 0.69362226, 0.22763554, 0.20717541, 0.42112268,
0.22803038, 0.33481806, 0.14968742, 0.71598558, 0.55126711,
0.64518015, 0.65170197, 0.89103003, 0.72728361, 0.24485454,
0.09410780, 0.79818029, 0.54212409, 0.17790462, 0.64442619,
0.62193511, 0.51193256, 0.02848781, 0.05719604, 0.45795152,
0.03219332, 0.28310254, 0.85746127, 0.64890240, 0.20658356,
0.50946422, 0.80432490, 0.08354468, 0.09222723, 0.67455943,
0.44638771, 0.76366629, 0.99677267, 0.89311242, 0.11627279,
0.09181302, 0.44767077, 0.16448724, 0.26005539, 0.28670391,
0.52465703, 0.43598116, 0.41869096, 0.98043420, 0.01497272,
0.51791571, 0.61825308, 0.85503436, 0.63025655, 0.02719292,
0.09865668, 0.30321729, 0.56998039, 0.14946350, 0.64823918,
0.19931639, 0.14623555, 0.54169913, 0.68944135, 0.73551005,
0.46743658, 0.04109096, 0.26625801, 0.09537298, 0.98207890,
0.58109721, 0.70793680, 0.84379365, 0.42774726, 0.12653597,
0.08566633, 0.53366781, 0.33960092, 0.11036831, 0.84464510,
0.16493476, 0.92493443, 0.87640673, 0.52727644, 0.57181349,
0.65071340, 0.00978637, 0.31700693, 0.69148222, 0.85063311,
0.06781819, 0.30794534, 0.65541667, 0.16400484, 0.06886223,
0.96227205, 0.09633060, 0.34513153, 0.31013900, 0.78165882,
0.39583699, 0.86327936, 0.69269199, 0.11016575, 0.67358419,
0.81775427, 0.50052824, 0.30068582, 0.16606837, 0.62243724,
0.47863741, 0.68796498, 0.31526949, 0.41180883, 0.23022147,
0.82342139, 0.83003381, 0.53571829, 0.41081533, 0.48600142]
      println("\n1000 outputs of Float64")
      for i = 1:1000
          z = rand(gen, Float64)
          print(" " ,z)
          if (i % 5 == 4)
              println()
          end
          @test isapprox(referenceNumbers[i], z; atol=1e-7)
      end
end
