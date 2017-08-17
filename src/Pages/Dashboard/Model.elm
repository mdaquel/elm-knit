module Pages.Dashboard where

import Infrastructure.Common as Common exposing (PageState)

type VisualizationType
  = Area
  | HeatMap
  | HorizontalBar
  | Line
  | Pie
  | VerticalBar

type alias Visualization =
  { id : String
  , visType : VisualizationType
  }

type alias UserId = String

type TimestampFormat
  = Epoch

type alias Timestamp =
  { gte : Int
  , lte : Int
  , format : TimestampFormat
  }

type alias Criteria =
  { userId : UserId
  , query: String
  , range : Timestamp
  }

type alias Model =
  { criteria : Criteria
  , visualizations : List Visualization
  , status : Common.PageState
  }

initModel : Model
initModel =
  { criteria = Criteria "" (Timestamp 0 0 TimestampFormat.Epoch)
  , visualizations = []
  , status = Common.PageState.Init
  }
