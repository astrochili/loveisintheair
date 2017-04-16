return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 83,
  backgroundcolor = { 255, 255, 255 },
  properties = {
    ["background"] = "2.jpg",
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
      objects = {
        {
          id = 81,
          name = "",
          type = "",
          shape = "polyline",
          x = 608,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -96, y = 0 },
            { x = -128, y = -112 }
          },
          properties = {}
        }
      }
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
          id = 63,
          name = "",
          type = "red",
          shape = "rectangle",
          x = 184,
          y = 416,
          width = 46,
          height = 166,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 64,
          name = "",
          type = "green",
          shape = "rectangle",
          x = 448,
          y = 216,
          width = 192,
          height = 34,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 65,
          name = "",
          type = "blue",
          shape = "rectangle",
          x = 628,
          y = 492,
          width = 40,
          height = 150,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          type = "yellow",
          shape = "rectangle",
          x = 416,
          y = 792,
          width = 198,
          height = 44,
          rotation = 0,
          visible = true,
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
          id = 82,
          name = "exit",
          type = "trigger",
          shape = "rectangle",
          x = 928,
          y = 928,
          width = 96,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 79,
          name = "switch",
          type = "trigger",
          shape = "polygon",
          x = 448,
          y = 728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -23.1304, y = -48.3158 },
            { x = 14.8696, y = -68 },
            { x = 52.8696, y = -48.3158 },
            { x = 38, y = -8.94737 }
          },
          properties = {
            ["targetId"] = 66
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
          id = 55,
          name = "",
          type = "",
          shape = "polygon",
          x = 216,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 184, y = -140 },
            { x = 24, y = -162 }
          },
          properties = {}
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "polygon",
          x = 234,
          y = 686,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 164, y = 142 },
            { x = 6, y = 140 }
          },
          properties = {}
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "polygon",
          x = 658,
          y = 838,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 164, y = -136 },
            { x = 162, y = 52 }
          },
          properties = {}
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "polygon",
          x = 670,
          y = 184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 198, y = 158 },
            { x = 180, y = -56 }
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
          id = 70,
          name = "key",
          type = "red",
          shape = "ellipse",
          x = 792,
          y = 584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "key",
          type = "blue",
          shape = "ellipse",
          x = 656,
          y = 368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "player",
          type = "green",
          shape = "ellipse",
          x = 328,
          y = 488,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "body",
          type = "red",
          shape = "rectangle",
          x = 464,
          y = 440,
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
