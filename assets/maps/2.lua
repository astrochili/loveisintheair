return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 96,
  height = 96,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 381,
  backgroundcolor = { 227, 227, 227 },
  properties = {
    ["background"] = "3.jpg",
    ["solidcolor"] = "#ff56b4f7"
  },
  tilesets = {},
  layers = {
    {
      type = "objectgroup",
      name = "Lines",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
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
          id = 299,
          name = "",
          type = "green",
          shape = "polygon",
          x = 864,
          y = 1184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 592, y = -24 },
            { x = 768, y = -24 },
            { x = 720, y = 168 },
            { x = 640, y = 168 },
            { x = 552, y = 8 }
          },
          properties = {}
        },
        {
          id = 373,
          name = "",
          type = "blue",
          shape = "polygon",
          x = 816,
          y = 1400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 272, y = -40 },
            { x = 272, y = 104 },
            { x = 16, y = 80 }
          },
          properties = {}
        },
        {
          id = 375,
          name = "",
          type = "yellow",
          shape = "polygon",
          x = 2640,
          y = 1536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 56, y = 32 },
            { x = 16, y = -24 },
            { x = 96, y = -80 },
            { x = 160, y = -64 },
            { x = 128, y = 24 }
          },
          properties = {}
        },
        {
          id = 374,
          name = "",
          type = "red",
          shape = "polygon",
          x = 1520,
          y = 1648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 24, y = 8 },
            { x = 96, y = 64 },
            { x = 152, y = -16 },
            { x = 64, y = -64 }
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
          id = 237,
          name = "exit",
          type = "trigger",
          shape = "polygon",
          x = 2632,
          y = 1748.67,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -8, y = -12.6667 },
            { x = 56, y = -60.6667 },
            { x = 56, y = 155.333 },
            { x = -8, y = 139.333 }
          },
          properties = {}
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
          id = 285,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 1384,
          width = 32,
          height = 576,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 288,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 1928,
          width = 864,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 290,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1088,
          y = 1352,
          width = 32,
          height = 384,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 292,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1328,
          y = 1128,
          width = 656,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 293,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1504,
          y = 1352,
          width = 216,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1984,
          y = 1128,
          width = 32,
          height = 576,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 295,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1984,
          y = 1704,
          width = 104,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 296,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 1456,
          width = 32,
          height = 504,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 297,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 1928,
          width = 528,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 300,
          name = "",
          type = "",
          shape = "polygon",
          x = 448,
          y = 1528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 88, y = -48 },
            { x = 184, y = -144 },
            { x = 0, y = -144 }
          },
          properties = {}
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "polygon",
          x = 448,
          y = 1792,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = 56 },
            { x = 80, y = 136 },
            { x = 0, y = 136 }
          },
          properties = {}
        },
        {
          id = 303,
          name = "",
          type = "",
          shape = "polygon",
          x = 744,
          y = 1832,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -88, y = -8 },
            { x = 208, y = 0 },
            { x = 376, y = -56 },
            { x = 376, y = -96 },
            { x = -176, y = -96 }
          },
          properties = {}
        },
        {
          id = 305,
          name = "",
          type = "",
          shape = "polygon",
          x = 1248,
          y = 1928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -24, y = 0 },
            { x = 64, y = -96 },
            { x = 64, y = 0 }
          },
          properties = {}
        },
        {
          id = 306,
          name = "",
          type = "",
          shape = "polygon",
          x = 1120,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -176 },
            { x = 24, y = -296 },
            { x = 24, y = -384 },
            { x = 0, y = -384 }
          },
          properties = {}
        },
        {
          id = 307,
          name = "",
          type = "",
          shape = "polygon",
          x = 1312,
          y = 1704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -32, y = -176 },
            { x = 56, y = -336 }
          },
          properties = {}
        },
        {
          id = 308,
          name = "",
          type = "",
          shape = "polygon",
          x = 1144,
          y = 1360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = 48, y = -112 },
            { x = 8, y = -160 },
            { x = -56, y = -8 }
          },
          properties = {}
        },
        {
          id = 309,
          name = "",
          type = "",
          shape = "polygon",
          x = 1192,
          y = 1248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 136, y = -72 },
            { x = 136, y = -120 },
            { x = -40, y = -48 }
          },
          properties = {}
        },
        {
          id = 312,
          name = "",
          type = "",
          shape = "polygon",
          x = 1680,
          y = 1352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 40, y = 0 },
            { x = 112, y = 104 },
            { x = 80, y = 120 },
            { x = 40, y = 32 }
          },
          properties = {}
        },
        {
          id = 313,
          name = "",
          type = "",
          shape = "polygon",
          x = 1328,
          y = 1176,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 88, y = 16 },
            { x = 128, y = -16 },
            { x = 0, y = -16 }
          },
          properties = {}
        },
        {
          id = 314,
          name = "",
          type = "",
          shape = "polygon",
          x = 1984,
          y = 1160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -320, y = 0 },
            { x = -112, y = 48 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 315,
          name = "",
          type = "",
          shape = "polygon",
          x = 1984,
          y = 1432,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -72, y = 184 },
            { x = 0, y = 304 }
          },
          properties = {}
        },
        {
          id = 316,
          name = "",
          type = "",
          shape = "polygon",
          x = 1792,
          y = 1824,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 248, y = 104 },
            { x = 0, y = 104 }
          },
          properties = {}
        },
        {
          id = 317,
          name = "",
          type = "",
          shape = "polygon",
          x = 2320,
          y = 1704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -80 },
            { x = 168, y = -120 },
            { x = 352, y = -80 },
            { x = 208, y = 48 }
          },
          properties = {}
        },
        {
          id = 318,
          name = "",
          type = "",
          shape = "polygon",
          x = 2320,
          y = 1928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -80 },
            { x = 216, y = 16 },
            { x = 240, y = 64 },
            { x = 48, y = 80 },
            { x = 0, y = 32 }
          },
          properties = {}
        },
        {
          id = 319,
          name = "",
          type = "",
          shape = "polygon",
          x = 2320,
          y = 1704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -80 },
            { x = 0, y = 48 },
            { x = 128, y = 88 },
            { x = 208, y = 48 }
          },
          properties = {}
        },
        {
          id = 320,
          name = "",
          type = "",
          shape = "polygon",
          x = 2320,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -232, y = 0 },
            { x = -232, y = 48 },
            { x = -336, y = 0 }
          },
          properties = {}
        },
        {
          id = 321,
          name = "",
          type = "",
          shape = "polygon",
          x = 2600,
          y = 1984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -40, y = 8 },
            { x = 88, y = -80 },
            { x = 24, y = -96 },
            { x = -64, y = -40 }
          },
          properties = {}
        },
        {
          id = 322,
          name = "",
          type = "",
          shape = "polygon",
          x = 2672,
          y = 1624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 16, y = 64 },
            { x = -48, y = 112 },
            { x = -144, y = 128 }
          },
          properties = {}
        },
        {
          id = 325,
          name = "",
          type = "",
          shape = "polygon",
          x = 1320,
          y = 1960,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -8, y = 0 },
            { x = 88, y = -232 },
            { x = -8, y = -256 }
          },
          properties = {}
        },
        {
          id = 346,
          name = "",
          type = "",
          shape = "polygon",
          x = 2088,
          y = 1784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 128, y = -88 },
            { x = 56, y = -176 },
            { x = 0, y = -80 }
          },
          properties = {}
        },
        {
          id = 347,
          name = "",
          type = "",
          shape = "polygon",
          x = 2216,
          y = 1696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 104, y = 56 },
            { x = 104, y = -72 },
            { x = -72, y = -88 }
          },
          properties = {}
        },
        {
          id = 348,
          name = "",
          type = "",
          shape = "polygon",
          x = 2320,
          y = 1848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -80, y = -24 },
            { x = -176, y = 24 },
            { x = -200, y = 80 },
            { x = 0, y = 80 }
          },
          properties = {}
        },
        {
          id = 349,
          name = "",
          type = "",
          shape = "polygon",
          x = 728,
          y = 1384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = 40 },
            { x = 40, y = 0 }
          },
          properties = {}
        },
        {
          id = 351,
          name = "",
          type = "",
          shape = "polygon",
          x = 416,
          y = 1352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -72, y = 328 },
            { x = 0, y = 608 }
          },
          properties = {}
        },
        {
          id = 352,
          name = "",
          type = "",
          shape = "polygon",
          x = 416,
          y = 1960,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 184, y = 80 },
            { x = 352, y = 112 },
            { x = 560, y = 40 },
            { x = 592, y = 0 }
          },
          properties = {}
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "polygon",
          x = 976,
          y = 2000,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 152, y = 32 },
            { x = 336, y = -40 },
            { x = 32, y = -40 }
          },
          properties = {}
        },
        {
          id = 356,
          name = "",
          type = "",
          shape = "polygon",
          x = 1032,
          y = 1704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -72, y = 32 },
            { x = 56, y = -72 },
            { x = 56, y = 32 }
          },
          properties = {}
        },
        {
          id = 359,
          name = "",
          type = "",
          shape = "polygon",
          x = 1656,
          y = 1128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 216, y = -64 },
            { x = 360, y = 0 }
          },
          properties = {}
        },
        {
          id = 360,
          name = "",
          type = "",
          shape = "polygon",
          x = 2016,
          y = 1128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = 216 },
            { x = 0, y = 432 }
          },
          properties = {}
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "polygon",
          x = 2016,
          y = 1656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = 48 },
            { x = 0, y = 48 }
          },
          properties = {}
        },
        {
          id = 362,
          name = "",
          type = "",
          shape = "polygon",
          x = 2176,
          y = 1960,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -112, y = 48 },
            { x = -200, y = 0 }
          },
          properties = {}
        },
        {
          id = 363,
          name = "",
          type = "",
          shape = "polygon",
          x = 1760,
          y = 1648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -56, y = 208 },
            { x = 0, y = 352 }
          },
          properties = {}
        },
        {
          id = 364,
          name = "",
          type = "",
          shape = "polygon",
          x = 1760,
          y = 2000,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 144, y = -40 },
            { x = 0, y = -40 }
          },
          properties = {}
        },
        {
          id = 365,
          name = "",
          type = "",
          shape = "polygon",
          x = 1504,
          y = 1384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 256, y = 88 },
            { x = 216, y = 0 }
          },
          properties = {}
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "polygon",
          x = 816,
          y = 1352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 48 },
            { x = 16, y = 128 },
            { x = -48, y = 184 },
            { x = -48, y = 0 }
          },
          properties = {}
        },
        {
          id = 367,
          name = "",
          type = "",
          shape = "rectangle",
          x = 568,
          y = 1616,
          width = 88,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 368,
          name = "",
          type = "",
          shape = "polygon",
          x = 568,
          y = 1600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 16 },
            { x = 200, y = -64 },
            { x = 200, y = -64 },
            { x = 200, y = 16 }
          },
          properties = {}
        },
        {
          id = 369,
          name = "",
          type = "",
          shape = "polygon",
          x = 656,
          y = 1632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 16 },
            { x = 112, y = -16 },
            { x = 0, y = -16 }
          },
          properties = {}
        },
        {
          id = 370,
          name = "",
          type = "",
          shape = "polygon",
          x = 656,
          y = 1696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = 40 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 371,
          name = "",
          type = "",
          shape = "polygon",
          x = 448,
          y = 1352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -32, y = 0 },
            { x = 184, y = -24 },
            { x = 320, y = 0 },
            { x = 320, y = 32 },
            { x = -32, y = 32 }
          },
          properties = {}
        },
        {
          id = 372,
          name = "",
          type = "",
          shape = "polygon",
          x = 1368,
          y = 1376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = 136, y = -24 },
            { x = 136, y = 8 },
            { x = 24, y = 32 }
          },
          properties = {}
        },
        {
          id = 376,
          name = "",
          type = "",
          shape = "polygon",
          x = 1408,
          y = 1728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -96, y = -24 },
            { x = -72, y = -192 }
          },
          properties = {}
        },
        {
          id = 377,
          name = "",
          type = "",
          shape = "polygon",
          x = 1336,
          y = 1536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = -128 },
            { x = 32, y = -168 }
          },
          properties = {}
        },
        {
          id = 378,
          name = "",
          type = "",
          shape = "polygon",
          x = 816,
          y = 1464,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 16, y = 16 },
            { x = -8, y = 120 },
            { x = -48, y = 152 },
            { x = -48, y = 72 }
          },
          properties = {}
        },
        {
          id = 380,
          name = "",
          type = "",
          shape = "polygon",
          x = 952,
          y = 1928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 128, y = -24 },
            { x = 272, y = 0 }
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
          id = 72,
          name = "player",
          type = "green",
          shape = "ellipse",
          x = 672,
          y = 1480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
