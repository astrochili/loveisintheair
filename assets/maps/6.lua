return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 96,
  height = 64,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 404,
  backgroundcolor = { 227, 227, 227 },
  properties = {
    ["background"] = "2.jpg",
    ["solidcolor"] = "#ff56b4f7"
  },
  tilesets = {},
  layers = {
    {
      type = "objectgroup",
      name = "Zones",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 354,
          name = "",
          type = "green",
          shape = "polygon",
          x = 1184,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -96, y = -32 },
            { x = -16, y = -104 },
            { x = 72, y = -48 }
          },
          properties = {}
        },
        {
          id = 355,
          name = "",
          type = "green",
          shape = "polygon",
          x = 1256,
          y = 896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 112, y = -48 },
            { x = 32, y = -96 },
            { x = -88, y = -56 }
          },
          properties = {}
        },
        {
          id = 356,
          name = "",
          type = "red",
          shape = "polygon",
          x = 1144,
          y = 1032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -88, y = 112 },
            { x = 32, y = 136 },
            { x = 136, y = 32 }
          },
          properties = {}
        },
        {
          id = 357,
          name = "",
          type = "red",
          shape = "polygon",
          x = 1352,
          y = 1048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -24, y = 168 },
            { x = -176, y = 120 },
            { x = -72, y = 16 }
          },
          properties = {}
        },
        {
          id = 362,
          name = "",
          type = "red",
          shape = "polygon",
          x = 1528,
          y = 768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 56, y = 88 },
            { x = 40, y = 144 },
            { x = 88, y = 184 }
          },
          properties = {}
        },
        {
          id = 363,
          name = "",
          type = "green",
          shape = "polygon",
          x = 1736,
          y = 984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 88, y = -48 },
            { x = 112, y = -160 },
            { x = 0, y = -192 }
          },
          properties = {}
        },
        {
          id = 395,
          name = "",
          type = "blue",
          shape = "polygon",
          x = 2040,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 320, y = 0 },
            { x = 296, y = 88 },
            { x = 24, y = 88 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Triggers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 403,
          name = "exit",
          type = "trigger",
          shape = "polygon",
          x = 2632,
          y = 856,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 24, y = 120 },
            { x = 80, y = 112 },
            { x = 64, y = 0 }
          },
          properties = {}
        },
        {
          id = 396,
          name = "switch",
          type = "trigger",
          shape = "polygon",
          x = 1736,
          y = 600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -112 },
            { x = 144, y = -96 },
            { x = 192, y = -24 },
            { x = 96, y = 0 }
          },
          properties = {
            ["targetId"] = 395
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Solid",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 306,
          name = "",
          type = "",
          shape = "polygon",
          x = 360,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 64, y = -48 },
            { x = 176, y = -296 },
            { x = 96, y = -320 },
            { x = -24, y = -8 }
          },
          properties = {}
        },
        {
          id = 307,
          name = "",
          type = "",
          shape = "polygon",
          x = 336,
          y = 1208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 64, y = 120 },
            { x = 184, y = 152 },
            { x = 80, y = 64 }
          },
          properties = {}
        },
        {
          id = 308,
          name = "",
          type = "",
          shape = "polygon",
          x = 392,
          y = 1536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 128, y = -40 },
            { x = 232, y = 32 },
            { x = 288, y = -32 },
            { x = 160, y = -72 }
          },
          properties = {}
        },
        {
          id = 309,
          name = "",
          type = "",
          shape = "polygon",
          x = 696,
          y = 1520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -16, y = -16 },
            { x = 48, y = -64 },
            { x = 128, y = -56 },
            { x = 56, y = 40 },
            { x = -72, y = 48 }
          },
          properties = {}
        },
        {
          id = 310,
          name = "",
          type = "",
          shape = "polygon",
          x = 744,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -56, y = -104 },
            { x = 56, y = -216 },
            { x = 136, y = -64 },
            { x = 80, y = 8 }
          },
          properties = {}
        },
        {
          id = 311,
          name = "",
          type = "",
          shape = "polygon",
          x = 688,
          y = 1352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -104, y = -88 },
            { x = -104, y = -168 },
            { x = -24, y = -232 },
            { x = 152, y = -200 },
            { x = 112, y = -112 }
          },
          properties = {}
        },
        {
          id = 312,
          name = "",
          type = "",
          shape = "polygon",
          x = 664,
          y = 1120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -16, y = -72 },
            { x = 80, y = -72 },
            { x = 176, y = 32 }
          },
          properties = {}
        },
        {
          id = 313,
          name = "",
          type = "",
          shape = "polygon",
          x = 648,
          y = 984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 176, y = 0 },
            { x = 224, y = -80 },
            { x = 112, y = -112 },
            { x = -48, y = -56 }
          },
          properties = {}
        },
        {
          id = 314,
          name = "",
          type = "",
          shape = "polygon",
          x = 600,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -64, y = -8 },
            { x = -144, y = -32 },
            { x = -8, y = -64 },
            { x = 160, y = -56 }
          },
          properties = {}
        },
        {
          id = 318,
          name = "",
          type = "",
          shape = "polygon",
          x = 760,
          y = 872,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 160, y = -24 },
            { x = 320, y = -8 },
            { x = 328, y = 40 },
            { x = 216, y = 48 },
            { x = 112, y = 32 }
          },
          properties = {}
        },
        {
          id = 319,
          name = "",
          type = "",
          shape = "polygon",
          x = 840,
          y = 1152,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = 32 },
            { x = 80, y = 72 },
            { x = 40, y = 240 },
            { x = -40, y = 88 }
          },
          properties = {}
        },
        {
          id = 320,
          name = "",
          type = "",
          shape = "polygon",
          x = 896,
          y = 1184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 160, y = -40 },
            { x = 216, y = 80 },
            { x = 24, y = 40 }
          },
          properties = {}
        },
        {
          id = 322,
          name = "",
          type = "",
          shape = "polygon",
          x = 1088,
          y = 912,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 80, y = -72 },
            { x = 8, y = -168 },
            { x = -8, y = -48 }
          },
          properties = {}
        },
        {
          id = 323,
          name = "",
          type = "",
          shape = "polygon",
          x = 1144,
          y = 1032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 112, y = -136 },
            { x = 224, y = -64 },
            { x = 208, y = 16 }
          },
          properties = {}
        },
        {
          id = 324,
          name = "",
          type = "",
          shape = "polygon",
          x = 1056,
          y = 1144,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 120, y = 24 },
            { x = 272, y = 72 },
            { x = 184, y = 160 },
            { x = 56, y = 120 }
          },
          properties = {}
        },
        {
          id = 325,
          name = "",
          type = "",
          shape = "polygon",
          x = 1352,
          y = 1048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 64, y = 40 },
            { x = 192, y = -40 },
            { x = 136, y = -160 },
            { x = 16, y = -80 }
          },
          properties = {}
        },
        {
          id = 326,
          name = "",
          type = "",
          shape = "polygon",
          x = 1368,
          y = 968,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -112, y = -72 },
            { x = 0, y = -120 },
            { x = 120, y = -80 }
          },
          properties = {}
        },
        {
          id = 327,
          name = "",
          type = "",
          shape = "polygon",
          x = 1168,
          y = 840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 120, y = -40 },
            { x = 216, y = -136 },
            { x = 104, y = -144 },
            { x = -72, y = -96 }
          },
          properties = {}
        },
        {
          id = 328,
          name = "",
          type = "",
          shape = "polygon",
          x = 1288,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 112, y = -32 },
            { x = 160, y = -136 },
            { x = 96, y = -96 }
          },
          properties = {}
        },
        {
          id = 329,
          name = "",
          type = "",
          shape = "polygon",
          x = 1400,
          y = 768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 128, y = 0 },
            { x = 216, y = -88 },
            { x = 48, y = -104 }
          },
          properties = {}
        },
        {
          id = 330,
          name = "",
          type = "",
          shape = "polygon",
          x = 1616,
          y = 680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 120, y = 304 },
            { x = 0, y = 272 },
            { x = -32, y = 176 },
            { x = -88, y = 88 }
          },
          properties = {}
        },
        {
          id = 332,
          name = "",
          type = "",
          shape = "polygon",
          x = 1616,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -8, y = 152 },
            { x = 152, y = 120 },
            { x = 120, y = 32 }
          },
          properties = {}
        },
        {
          id = 333,
          name = "",
          type = "",
          shape = "polygon",
          x = 1536,
          y = 1016,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 8, y = -8 },
            { x = 24, y = 88 },
            { x = -120, y = 72 }
          },
          properties = {}
        },
        {
          id = 334,
          name = "",
          type = "",
          shape = "polygon",
          x = 1696,
          y = 1192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 128, y = 24 },
            { x = 176, y = 104 },
            { x = 16, y = 88 }
          },
          properties = {}
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "polygon",
          x = 1824,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 192, y = -104 },
            { x = 304, y = -32 },
            { x = 48, y = 80 }
          },
          properties = {}
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "polygon",
          x = 2128,
          y = 1184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 8, y = -232 },
            { x = -112, y = -264 },
            { x = -112, y = -72 }
          },
          properties = {}
        },
        {
          id = 337,
          name = "",
          type = "",
          shape = "polygon",
          x = 2136,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -80, y = -120 },
            { x = -120, y = -32 }
          },
          properties = {}
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "polygon",
          x = 2016,
          y = 920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -88 },
            { x = -128, y = -48 },
            { x = -136, y = 72 }
          },
          properties = {}
        },
        {
          id = 339,
          name = "",
          type = "",
          shape = "polygon",
          x = 1880,
          y = 992,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -56, y = -56 },
            { x = -32, y = -168 },
            { x = 8, y = -120 }
          },
          properties = {}
        },
        {
          id = 340,
          name = "",
          type = "",
          shape = "polygon",
          x = 1736,
          y = 984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = -192 },
            { x = -120, y = -304 }
          },
          properties = {}
        },
        {
          id = 344,
          name = "",
          type = "",
          shape = "polygon",
          x = 1144,
          y = 1032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -88 },
            { x = 112, y = -136 }
          },
          properties = {}
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "polygon",
          x = 1144,
          y = 1032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 136, y = 32 },
            { x = 208, y = 16 }
          },
          properties = {}
        },
        {
          id = 348,
          name = "",
          type = "",
          shape = "polygon",
          x = 336,
          y = 1208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 16, y = -128 },
            { x = 120, y = -312 }
          },
          properties = {}
        },
        {
          id = 350,
          name = "",
          type = "",
          shape = "polygon",
          x = 536,
          y = 920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 136 },
            { x = -112, y = 248 }
          },
          properties = {}
        },
        {
          id = 353,
          name = "",
          type = "",
          shape = "polygon",
          x = 424,
          y = 1168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -8, y = 104 },
            { x = -88, y = 40 }
          },
          properties = {}
        },
        {
          id = 359,
          name = "",
          type = "",
          shape = "polygon",
          x = 480,
          y = 1344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 40, y = 16 },
            { x = 72, y = 120 },
            { x = 40, y = 152 },
            { x = -40, y = 72 }
          },
          properties = {}
        },
        {
          id = 360,
          name = "",
          type = "",
          shape = "polygon",
          x = 432,
          y = 1368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 8, y = 48 },
            { x = -32, y = -40 },
            { x = 88, y = -8 }
          },
          properties = {}
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "polygon",
          x = 1328,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -24 },
            { x = 368, y = -24 },
            { x = 384, y = 64 },
            { x = 280, y = 112 },
            { x = -88, y = 88 }
          },
          properties = {}
        },
        {
          id = 365,
          name = "",
          type = "",
          shape = "polygon",
          x = 1880,
          y = 992,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 88, y = -8 },
            { x = 136, y = -72 }
          },
          properties = {}
        },
        {
          id = 367,
          name = "",
          type = "",
          shape = "polygon",
          x = 1968,
          y = 984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 48, y = 48 },
            { x = 48, y = -64 }
          },
          properties = {}
        },
        {
          id = 370,
          name = "",
          type = "",
          shape = "polygon",
          x = 1616,
          y = 680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -168, y = -16 },
            { x = -56, y = -176 },
            { x = 56, y = -120 },
            { x = 56, y = -64 }
          },
          properties = {}
        },
        {
          id = 371,
          name = "",
          type = "",
          shape = "polygon",
          x = 1672,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 64, y = -16 },
            { x = 104, y = -128 },
            { x = 32, y = -192 },
            { x = 0, y = -56 }
          },
          properties = {}
        },
        {
          id = 372,
          name = "",
          type = "",
          shape = "polygon",
          x = 1672,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -112, y = -56 },
            { x = 32, y = -136 }
          },
          properties = {}
        },
        {
          id = 374,
          name = "",
          type = "",
          shape = "polygon",
          x = 1776,
          y = 488,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 104, y = 16 },
            { x = 184, y = -64 },
            { x = -72, y = -64 }
          },
          properties = {}
        },
        {
          id = 375,
          name = "",
          type = "",
          shape = "polygon",
          x = 1880,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 48, y = 72 },
            { x = 176, y = 8 },
            { x = 80, y = -80 }
          },
          properties = {}
        },
        {
          id = 376,
          name = "",
          type = "",
          shape = "polygon",
          x = 1928,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 48, y = 24 },
            { x = 112, y = 40 },
            { x = 128, y = -64 }
          },
          properties = {}
        },
        {
          id = 377,
          name = "",
          type = "",
          shape = "polygon",
          x = 2040,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 320, y = 0 },
            { x = 16, y = -104 }
          },
          properties = {}
        },
        {
          id = 378,
          name = "",
          type = "",
          shape = "polygon",
          x = 2136,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 24, y = -176 },
            { x = -80, y = -120 }
          },
          properties = {}
        },
        {
          id = 379,
          name = "",
          type = "",
          shape = "polygon",
          x = 1888,
          y = 872,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 128, y = -88 },
            { x = 192, y = -96 },
            { x = 168, y = -40 }
          },
          properties = {}
        },
        {
          id = 380,
          name = "",
          type = "",
          shape = "polygon",
          x = 2016,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 16, y = -48 },
            { x = 48, y = -80 },
            { x = 64, y = -8 }
          },
          properties = {}
        },
        {
          id = 381,
          name = "",
          type = "",
          shape = "polygon",
          x = 2056,
          y = 832,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 104, y = -56 },
            { x = 24, y = -56 }
          },
          properties = {}
        },
        {
          id = 382,
          name = "",
          type = "",
          shape = "polygon",
          x = 2080,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -16, y = -72 },
            { x = 256, y = -72 },
            { x = 80, y = 0 }
          },
          properties = {}
        },
        {
          id = 389,
          name = "",
          type = "",
          shape = "polygon",
          x = 2360,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = -32 },
            { x = -304, y = -104 }
          },
          properties = {}
        },
        {
          id = 390,
          name = "",
          type = "",
          shape = "polygon",
          x = 2360,
          y = 616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 72, y = 40 },
            { x = 160, y = -16 },
            { x = 40, y = -32 }
          },
          properties = {}
        },
        {
          id = 391,
          name = "",
          type = "",
          shape = "polygon",
          x = 2520,
          y = 600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 24, y = 176 },
            { x = -24, y = 176 },
            { x = -88, y = 56 }
          },
          properties = {}
        },
        {
          id = 392,
          name = "",
          type = "",
          shape = "polygon",
          x = 2336,
          y = 704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 64, y = 56 },
            { x = -16, y = 136 },
            { x = -176, y = 72 }
          },
          properties = {}
        },
        {
          id = 393,
          name = "",
          type = "",
          shape = "polygon",
          x = 2496,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -24, y = 72 },
            { x = 56, y = 88 },
            { x = 48, y = 0 }
          },
          properties = {}
        },
        {
          id = 394,
          name = "",
          type = "",
          shape = "polygon",
          x = 2320,
          y = 840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 88, y = 32 },
            { x = 104, y = -16 },
            { x = 80, y = -80 }
          },
          properties = {}
        },
        {
          id = 397,
          name = "",
          type = "",
          shape = "polygon",
          x = 2544,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 88, y = 80 },
            { x = 8, y = 88 }
          },
          properties = {}
        },
        {
          id = 398,
          name = "",
          type = "",
          shape = "polygon",
          x = 2544,
          y = 936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 112, y = 40 },
            { x = 72, y = 96 },
            { x = -112, y = 80 },
            { x = -96, y = 0 }
          },
          properties = {}
        },
        {
          id = 399,
          name = "",
          type = "",
          shape = "polygon",
          x = 2408,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 24, y = 72 },
            { x = -88, y = -104 },
            { x = 0, y = -72 },
            { x = 40, y = -8 }
          },
          properties = {}
        },
        {
          id = 401,
          name = "",
          type = "",
          shape = "polygon",
          x = 2544,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 104, y = 24 },
            { x = 152, y = 80 },
            { x = 88, y = 80 }
          },
          properties = {}
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "polygon",
          x = 2656,
          y = 976,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = -8 },
            { x = 48, y = 48 },
            { x = -40, y = 56 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Entities",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 305,
          name = "player",
          type = "blue",
          shape = "ellipse",
          x = 632,
          y = 1416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 315,
          name = "body",
          type = "red",
          shape = "rectangle",
          x = 696,
          y = 992,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 316,
          name = "key",
          type = "green",
          shape = "ellipse",
          x = 1080,
          y = 1016,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 358,
          name = "key",
          type = "yellow",
          shape = "ellipse",
          x = 1584,
          y = 1128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 400,
          name = "body",
          type = "yellow",
          shape = "ellipse",
          x = 2568,
          y = 903,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
