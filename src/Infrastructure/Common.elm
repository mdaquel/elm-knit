module Infrastructure.Common exposing ( PageState (..) )

import Http exposing (Error)

type PageState
  = Init
  | Fetching
  | Fetched
  | HttpError Http.Error
