defmodule ElixirPhoenixZeroToOneWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use ElixirPhoenixZeroToOneWeb, :controller` and
  `use ElixirPhoenixZeroToOneWeb, :live_view`.
  """
  use ElixirPhoenixZeroToOneWeb, :html

  embed_templates "layouts/*"
end
