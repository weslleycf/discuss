defmodule DiscussWeb.CommentsChannel do
    use DiscussWeb, :channel
    alias Discuss.Topic
    alias Discuss.Repo

    def join("comments:" <> topic_id, _params, socket) do
        topic_id = String.to_integer(topic_id)
        topic = Repo.get(Topic, topic_id)
        IO.puts "+++++++++++++++++++++++++++"
        IO.puts "+++++++++++++++++++++++++++"
        IO.puts "+++++++++++++++++++++++++++"
        IO.inspect(topic)
        {:ok, %{}, socket}
    end

    def handle_in() do

    end

end
