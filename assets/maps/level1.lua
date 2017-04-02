return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 128,
  height = 128,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 46,
  properties = {},
  tilesets = {},
  layers = {
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
          id = 26,
          name = "",
          type = "",
          shape = "polygon",
          x = 536,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 112, y = -72 },
            { x = 232, y = -40 },
            { x = 0, y = 56 }
          },
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "polygon",
          x = 104,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -16, y = -16 },
            { x = 240, y = -16 },
            { x = 248, y = 40 }
          },
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "polygon",
          x = 720,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 64, y = 104 },
            { x = 152, y = 32 },
            { x = 112, y = -56 },
            { x = 48, y = -48 }
          },
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "polygon",
          x = 864,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -66.6667, y = 136 },
            { x = 13.3333, y = 136 },
            { x = 13.3333, y = 0 }
          },
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "polygon",
          x = 152,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 56, y = -40 },
            { x = 128, y = -56 },
            { x = 136, y = -32 },
            { x = 64, y = 16 },
            { x = 16, y = 24 }
          },
          properties = {}
        },
        {
          id = 45,
          name = "",
          type = "",
          shape = "polygon",
          x = 224,
          y = 664,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 16, y = -64 },
            { x = 144, y = 24 },
            { x = 96, y = 80 }
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
          id = 39,
          name = "",
          type = "health",
          shape = "polygon",
          x = 608,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -176, y = -136 },
            { x = -88, y = -208 },
            { x = 0, y = -136 },
            { x = -80, y = -16 }
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
          id = 17,
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 560,
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
