-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
module('Game_LongTan_pb')


local PB_S_GAMESTATUS = protobuf.Descriptor();
local PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD = protobuf.FieldDescriptor();
local PB_S_GAMESTART = protobuf.Descriptor();
local PB_S_GAMESTART_CBCANSTART_FIELD = protobuf.FieldDescriptor();
local PB_S_GAMESTART_STRWHY_FIELD = protobuf.FieldDescriptor();
local PB_S_GAMESTART_CBSTAGE_FIELD = protobuf.FieldDescriptor();
local PB_S_GAMESTART_CBLITTLESTAGE_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART = protobuf.Descriptor();
local PB_S_STAGESTART_CBCANSTART_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_STRWHY_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBSTAGE_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBLITTLESTAGE_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBMULTIPLE_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBBETAMOUNT_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_JEWELS_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_DISAPPEAR_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBCOLORCANDIS1_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBCOLORCANDIS2_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBCOLORCANDIS3_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBCOLORCANDIS4_FIELD = protobuf.FieldDescriptor();
local PB_S_STAGESTART_CBCOLORCANDIS5_FIELD = protobuf.FieldDescriptor();
local PS_S_DISAPPEAR = protobuf.Descriptor();
local PS_S_DISAPPEAR_POS_FIELD = protobuf.FieldDescriptor();
local PS_S_DISAPPEAR_COLOR_FIELD = protobuf.FieldDescriptor();
local PS_S_FINALREWARD = protobuf.Descriptor();
local PS_S_FINALREWARD_REWARDBIGTYPE_FIELD = protobuf.FieldDescriptor();
local PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD = protobuf.FieldDescriptor();
local PS_S_FINALREWARD_REWARDVALUE_FIELD = protobuf.FieldDescriptor();
local PB_C_CONCLUDEGAME = protobuf.Descriptor();
local PB_C_BET = protobuf.Descriptor();
local PB_C_BET_CBBET_FIELD = protobuf.FieldDescriptor();
local PB_C_PLAYEND = protobuf.Descriptor();

PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.name = "cbCurGameStatus"
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.full_name = ".PB_S_GameStatus.cbCurGameStatus"
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.number = 1
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.index = 0
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.label = 1
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.has_default_value = false
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.default_value = 0
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.type = 5
PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD.cpp_type = 1

PB_S_GAMESTATUS.name = "PB_S_GameStatus"
PB_S_GAMESTATUS.full_name = ".PB_S_GameStatus"
PB_S_GAMESTATUS.nested_types = {}
PB_S_GAMESTATUS.enum_types = {}
PB_S_GAMESTATUS.fields = {PB_S_GAMESTATUS_CBCURGAMESTATUS_FIELD}
PB_S_GAMESTATUS.is_extendable = false
PB_S_GAMESTATUS.extensions = {}
PB_S_GAMESTART_CBCANSTART_FIELD.name = "cbCanStart"
PB_S_GAMESTART_CBCANSTART_FIELD.full_name = ".PB_S_GameStart.cbCanStart"
PB_S_GAMESTART_CBCANSTART_FIELD.number = 1
PB_S_GAMESTART_CBCANSTART_FIELD.index = 0
PB_S_GAMESTART_CBCANSTART_FIELD.label = 1
PB_S_GAMESTART_CBCANSTART_FIELD.has_default_value = false
PB_S_GAMESTART_CBCANSTART_FIELD.default_value = 0
PB_S_GAMESTART_CBCANSTART_FIELD.type = 5
PB_S_GAMESTART_CBCANSTART_FIELD.cpp_type = 1

PB_S_GAMESTART_STRWHY_FIELD.name = "strWhy"
PB_S_GAMESTART_STRWHY_FIELD.full_name = ".PB_S_GameStart.strWhy"
PB_S_GAMESTART_STRWHY_FIELD.number = 2
PB_S_GAMESTART_STRWHY_FIELD.index = 1
PB_S_GAMESTART_STRWHY_FIELD.label = 1
PB_S_GAMESTART_STRWHY_FIELD.has_default_value = false
PB_S_GAMESTART_STRWHY_FIELD.default_value = ""
PB_S_GAMESTART_STRWHY_FIELD.type = 9
PB_S_GAMESTART_STRWHY_FIELD.cpp_type = 9

PB_S_GAMESTART_CBSTAGE_FIELD.name = "cbStage"
PB_S_GAMESTART_CBSTAGE_FIELD.full_name = ".PB_S_GameStart.cbStage"
PB_S_GAMESTART_CBSTAGE_FIELD.number = 3
PB_S_GAMESTART_CBSTAGE_FIELD.index = 2
PB_S_GAMESTART_CBSTAGE_FIELD.label = 1
PB_S_GAMESTART_CBSTAGE_FIELD.has_default_value = false
PB_S_GAMESTART_CBSTAGE_FIELD.default_value = 0
PB_S_GAMESTART_CBSTAGE_FIELD.type = 5
PB_S_GAMESTART_CBSTAGE_FIELD.cpp_type = 1

PB_S_GAMESTART_CBLITTLESTAGE_FIELD.name = "cblittleStage"
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.full_name = ".PB_S_GameStart.cblittleStage"
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.number = 4
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.index = 3
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.label = 1
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.has_default_value = false
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.default_value = 0
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.type = 5
PB_S_GAMESTART_CBLITTLESTAGE_FIELD.cpp_type = 1

PB_S_GAMESTART.name = "PB_S_GameStart"
PB_S_GAMESTART.full_name = ".PB_S_GameStart"
PB_S_GAMESTART.nested_types = {}
PB_S_GAMESTART.enum_types = {}
PB_S_GAMESTART.fields = {PB_S_GAMESTART_CBCANSTART_FIELD, PB_S_GAMESTART_STRWHY_FIELD, PB_S_GAMESTART_CBSTAGE_FIELD, PB_S_GAMESTART_CBLITTLESTAGE_FIELD}
PB_S_GAMESTART.is_extendable = false
PB_S_GAMESTART.extensions = {}
PB_S_STAGESTART_CBCANSTART_FIELD.name = "cbCanStart"
PB_S_STAGESTART_CBCANSTART_FIELD.full_name = ".PB_S_StageStart.cbCanStart"
PB_S_STAGESTART_CBCANSTART_FIELD.number = 1
PB_S_STAGESTART_CBCANSTART_FIELD.index = 0
PB_S_STAGESTART_CBCANSTART_FIELD.label = 1
PB_S_STAGESTART_CBCANSTART_FIELD.has_default_value = false
PB_S_STAGESTART_CBCANSTART_FIELD.default_value = 0
PB_S_STAGESTART_CBCANSTART_FIELD.type = 5
PB_S_STAGESTART_CBCANSTART_FIELD.cpp_type = 1

PB_S_STAGESTART_STRWHY_FIELD.name = "strWhy"
PB_S_STAGESTART_STRWHY_FIELD.full_name = ".PB_S_StageStart.strWhy"
PB_S_STAGESTART_STRWHY_FIELD.number = 2
PB_S_STAGESTART_STRWHY_FIELD.index = 1
PB_S_STAGESTART_STRWHY_FIELD.label = 1
PB_S_STAGESTART_STRWHY_FIELD.has_default_value = false
PB_S_STAGESTART_STRWHY_FIELD.default_value = ""
PB_S_STAGESTART_STRWHY_FIELD.type = 9
PB_S_STAGESTART_STRWHY_FIELD.cpp_type = 9

PB_S_STAGESTART_CBSTAGE_FIELD.name = "cbStage"
PB_S_STAGESTART_CBSTAGE_FIELD.full_name = ".PB_S_StageStart.cbStage"
PB_S_STAGESTART_CBSTAGE_FIELD.number = 3
PB_S_STAGESTART_CBSTAGE_FIELD.index = 2
PB_S_STAGESTART_CBSTAGE_FIELD.label = 1
PB_S_STAGESTART_CBSTAGE_FIELD.has_default_value = false
PB_S_STAGESTART_CBSTAGE_FIELD.default_value = 0
PB_S_STAGESTART_CBSTAGE_FIELD.type = 5
PB_S_STAGESTART_CBSTAGE_FIELD.cpp_type = 1

PB_S_STAGESTART_CBLITTLESTAGE_FIELD.name = "cblittleStage"
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.full_name = ".PB_S_StageStart.cblittleStage"
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.number = 4
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.index = 3
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.label = 1
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.has_default_value = false
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.default_value = 0
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.type = 5
PB_S_STAGESTART_CBLITTLESTAGE_FIELD.cpp_type = 1

PB_S_STAGESTART_CBMULTIPLE_FIELD.name = "cbMultiple"
PB_S_STAGESTART_CBMULTIPLE_FIELD.full_name = ".PB_S_StageStart.cbMultiple"
PB_S_STAGESTART_CBMULTIPLE_FIELD.number = 5
PB_S_STAGESTART_CBMULTIPLE_FIELD.index = 4
PB_S_STAGESTART_CBMULTIPLE_FIELD.label = 1
PB_S_STAGESTART_CBMULTIPLE_FIELD.has_default_value = false
PB_S_STAGESTART_CBMULTIPLE_FIELD.default_value = 0
PB_S_STAGESTART_CBMULTIPLE_FIELD.type = 5
PB_S_STAGESTART_CBMULTIPLE_FIELD.cpp_type = 1

PB_S_STAGESTART_CBBETAMOUNT_FIELD.name = "cbBetAmount"
PB_S_STAGESTART_CBBETAMOUNT_FIELD.full_name = ".PB_S_StageStart.cbBetAmount"
PB_S_STAGESTART_CBBETAMOUNT_FIELD.number = 6
PB_S_STAGESTART_CBBETAMOUNT_FIELD.index = 5
PB_S_STAGESTART_CBBETAMOUNT_FIELD.label = 1
PB_S_STAGESTART_CBBETAMOUNT_FIELD.has_default_value = false
PB_S_STAGESTART_CBBETAMOUNT_FIELD.default_value = 0
PB_S_STAGESTART_CBBETAMOUNT_FIELD.type = 5
PB_S_STAGESTART_CBBETAMOUNT_FIELD.cpp_type = 1

PB_S_STAGESTART_JEWELS_FIELD.name = "Jewels"
PB_S_STAGESTART_JEWELS_FIELD.full_name = ".PB_S_StageStart.Jewels"
PB_S_STAGESTART_JEWELS_FIELD.number = 7
PB_S_STAGESTART_JEWELS_FIELD.index = 6
PB_S_STAGESTART_JEWELS_FIELD.label = 3
PB_S_STAGESTART_JEWELS_FIELD.has_default_value = false
PB_S_STAGESTART_JEWELS_FIELD.default_value = {}
PB_S_STAGESTART_JEWELS_FIELD.type = 5
PB_S_STAGESTART_JEWELS_FIELD.cpp_type = 1

PB_S_STAGESTART_DISAPPEAR_FIELD.name = "disappear"
PB_S_STAGESTART_DISAPPEAR_FIELD.full_name = ".PB_S_StageStart.disappear"
PB_S_STAGESTART_DISAPPEAR_FIELD.number = 8
PB_S_STAGESTART_DISAPPEAR_FIELD.index = 7
PB_S_STAGESTART_DISAPPEAR_FIELD.label = 3
PB_S_STAGESTART_DISAPPEAR_FIELD.has_default_value = false
PB_S_STAGESTART_DISAPPEAR_FIELD.default_value = {}
PB_S_STAGESTART_DISAPPEAR_FIELD.message_type = PS_S_DISAPPEAR
PB_S_STAGESTART_DISAPPEAR_FIELD.type = 11
PB_S_STAGESTART_DISAPPEAR_FIELD.cpp_type = 10

PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.name = "cbColorCanDis1"
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.full_name = ".PB_S_StageStart.cbColorCanDis1"
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.number = 9
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.index = 8
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.label = 1
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.has_default_value = false
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.default_value = 0
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.type = 5
PB_S_STAGESTART_CBCOLORCANDIS1_FIELD.cpp_type = 1

PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.name = "cbColorCanDis2"
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.full_name = ".PB_S_StageStart.cbColorCanDis2"
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.number = 10
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.index = 9
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.label = 1
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.has_default_value = false
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.default_value = 0
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.type = 5
PB_S_STAGESTART_CBCOLORCANDIS2_FIELD.cpp_type = 1

PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.name = "cbColorCanDis3"
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.full_name = ".PB_S_StageStart.cbColorCanDis3"
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.number = 11
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.index = 10
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.label = 1
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.has_default_value = false
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.default_value = 0
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.type = 5
PB_S_STAGESTART_CBCOLORCANDIS3_FIELD.cpp_type = 1

PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.name = "cbColorCanDis4"
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.full_name = ".PB_S_StageStart.cbColorCanDis4"
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.number = 12
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.index = 11
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.label = 1
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.has_default_value = false
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.default_value = 0
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.type = 5
PB_S_STAGESTART_CBCOLORCANDIS4_FIELD.cpp_type = 1

PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.name = "cbColorCanDis5"
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.full_name = ".PB_S_StageStart.cbColorCanDis5"
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.number = 13
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.index = 12
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.label = 1
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.has_default_value = false
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.default_value = 0
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.type = 5
PB_S_STAGESTART_CBCOLORCANDIS5_FIELD.cpp_type = 1

PB_S_STAGESTART.name = "PB_S_StageStart"
PB_S_STAGESTART.full_name = ".PB_S_StageStart"
PB_S_STAGESTART.nested_types = {}
PB_S_STAGESTART.enum_types = {}
PB_S_STAGESTART.fields = {PB_S_STAGESTART_CBCANSTART_FIELD, PB_S_STAGESTART_STRWHY_FIELD, PB_S_STAGESTART_CBSTAGE_FIELD, PB_S_STAGESTART_CBLITTLESTAGE_FIELD, PB_S_STAGESTART_CBMULTIPLE_FIELD, PB_S_STAGESTART_CBBETAMOUNT_FIELD, PB_S_STAGESTART_JEWELS_FIELD, PB_S_STAGESTART_DISAPPEAR_FIELD, PB_S_STAGESTART_CBCOLORCANDIS1_FIELD, PB_S_STAGESTART_CBCOLORCANDIS2_FIELD, PB_S_STAGESTART_CBCOLORCANDIS3_FIELD, PB_S_STAGESTART_CBCOLORCANDIS4_FIELD, PB_S_STAGESTART_CBCOLORCANDIS5_FIELD}
PB_S_STAGESTART.is_extendable = false
PB_S_STAGESTART.extensions = {}
PS_S_DISAPPEAR_POS_FIELD.name = "pos"
PS_S_DISAPPEAR_POS_FIELD.full_name = ".PS_S_Disappear.pos"
PS_S_DISAPPEAR_POS_FIELD.number = 1
PS_S_DISAPPEAR_POS_FIELD.index = 0
PS_S_DISAPPEAR_POS_FIELD.label = 3
PS_S_DISAPPEAR_POS_FIELD.has_default_value = false
PS_S_DISAPPEAR_POS_FIELD.default_value = {}
PS_S_DISAPPEAR_POS_FIELD.type = 5
PS_S_DISAPPEAR_POS_FIELD.cpp_type = 1

PS_S_DISAPPEAR_COLOR_FIELD.name = "color"
PS_S_DISAPPEAR_COLOR_FIELD.full_name = ".PS_S_Disappear.color"
PS_S_DISAPPEAR_COLOR_FIELD.number = 2
PS_S_DISAPPEAR_COLOR_FIELD.index = 1
PS_S_DISAPPEAR_COLOR_FIELD.label = 1
PS_S_DISAPPEAR_COLOR_FIELD.has_default_value = false
PS_S_DISAPPEAR_COLOR_FIELD.default_value = 0
PS_S_DISAPPEAR_COLOR_FIELD.type = 5
PS_S_DISAPPEAR_COLOR_FIELD.cpp_type = 1

PS_S_DISAPPEAR.name = "PS_S_Disappear"
PS_S_DISAPPEAR.full_name = ".PS_S_Disappear"
PS_S_DISAPPEAR.nested_types = {}
PS_S_DISAPPEAR.enum_types = {}
PS_S_DISAPPEAR.fields = {PS_S_DISAPPEAR_POS_FIELD, PS_S_DISAPPEAR_COLOR_FIELD}
PS_S_DISAPPEAR.is_extendable = false
PS_S_DISAPPEAR.extensions = {}
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.name = "RewardBigType"
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.full_name = ".PS_S_FinalReward.RewardBigType"
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.number = 1
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.index = 0
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.label = 1
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.has_default_value = false
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.default_value = 0
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.type = 5
PS_S_FINALREWARD_REWARDBIGTYPE_FIELD.cpp_type = 1

PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.name = "RewardLittleType"
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.full_name = ".PS_S_FinalReward.RewardLittleType"
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.number = 2
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.index = 1
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.label = 1
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.has_default_value = false
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.default_value = 0
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.type = 5
PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD.cpp_type = 1

PS_S_FINALREWARD_REWARDVALUE_FIELD.name = "RewardValue"
PS_S_FINALREWARD_REWARDVALUE_FIELD.full_name = ".PS_S_FinalReward.RewardValue"
PS_S_FINALREWARD_REWARDVALUE_FIELD.number = 3
PS_S_FINALREWARD_REWARDVALUE_FIELD.index = 2
PS_S_FINALREWARD_REWARDVALUE_FIELD.label = 1
PS_S_FINALREWARD_REWARDVALUE_FIELD.has_default_value = false
PS_S_FINALREWARD_REWARDVALUE_FIELD.default_value = 0
PS_S_FINALREWARD_REWARDVALUE_FIELD.type = 5
PS_S_FINALREWARD_REWARDVALUE_FIELD.cpp_type = 1

PS_S_FINALREWARD.name = "PS_S_FinalReward"
PS_S_FINALREWARD.full_name = ".PS_S_FinalReward"
PS_S_FINALREWARD.nested_types = {}
PS_S_FINALREWARD.enum_types = {}
PS_S_FINALREWARD.fields = {PS_S_FINALREWARD_REWARDBIGTYPE_FIELD, PS_S_FINALREWARD_REWARDLITTLETYPE_FIELD, PS_S_FINALREWARD_REWARDVALUE_FIELD}
PS_S_FINALREWARD.is_extendable = false
PS_S_FINALREWARD.extensions = {}
PB_C_CONCLUDEGAME.name = "PB_C_ConcludeGame"
PB_C_CONCLUDEGAME.full_name = ".PB_C_ConcludeGame"
PB_C_CONCLUDEGAME.nested_types = {}
PB_C_CONCLUDEGAME.enum_types = {}
PB_C_CONCLUDEGAME.fields = {}
PB_C_CONCLUDEGAME.is_extendable = false
PB_C_CONCLUDEGAME.extensions = {}
PB_C_BET_CBBET_FIELD.name = "cbBet"
PB_C_BET_CBBET_FIELD.full_name = ".PB_C_BET.cbBet"
PB_C_BET_CBBET_FIELD.number = 1
PB_C_BET_CBBET_FIELD.index = 0
PB_C_BET_CBBET_FIELD.label = 1
PB_C_BET_CBBET_FIELD.has_default_value = false
PB_C_BET_CBBET_FIELD.default_value = 0
PB_C_BET_CBBET_FIELD.type = 5
PB_C_BET_CBBET_FIELD.cpp_type = 1

PB_C_BET.name = "PB_C_BET"
PB_C_BET.full_name = ".PB_C_BET"
PB_C_BET.nested_types = {}
PB_C_BET.enum_types = {}
PB_C_BET.fields = {PB_C_BET_CBBET_FIELD}
PB_C_BET.is_extendable = false
PB_C_BET.extensions = {}
PB_C_PLAYEND.name = "PB_C_PlayEnd"
PB_C_PLAYEND.full_name = ".PB_C_PlayEnd"
PB_C_PLAYEND.nested_types = {}
PB_C_PLAYEND.enum_types = {}
PB_C_PLAYEND.fields = {}
PB_C_PLAYEND.is_extendable = false
PB_C_PLAYEND.extensions = {}

PB_C_BET = protobuf.Message(PB_C_BET)
PB_C_ConcludeGame = protobuf.Message(PB_C_CONCLUDEGAME)
PB_C_PlayEnd = protobuf.Message(PB_C_PLAYEND)
PB_S_GameStart = protobuf.Message(PB_S_GAMESTART)
PB_S_GameStatus = protobuf.Message(PB_S_GAMESTATUS)
PB_S_StageStart = protobuf.Message(PB_S_STAGESTART)
PS_S_Disappear = protobuf.Message(PS_S_DISAPPEAR)
PS_S_FinalReward = protobuf.Message(PS_S_FINALREWARD)

