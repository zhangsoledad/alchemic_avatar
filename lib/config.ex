defmodule AlchemicAvatar.Config do
  @moduledoc """
  This module provides configuration.

  The following are valid configuration items.

  | name               | type    | default  |
  | :----------------- | :------ | -------: |
  | cache_base_path    | binary  | N/A      |
  | colors_palette     | atom    | :google or :iwanthue |
  | weight             | int     | 300   |
  | annotate_position  | binary  | "-0+5" |
  """

  @config Application.get_all_env(:alchemic_avatar)

  def cache_base_path do
    Keyword.get(@config, :cache_base_path)
  end

  def colors_palette do
    Keyword.get(@config, :colors_palette, :google)
  end

  def weight do
    Keyword.get(@config, :weight, 300)
  end


  def annotate_position do
    Keyword.get(@config, :annotate_position, "-0+5")
  end
end
