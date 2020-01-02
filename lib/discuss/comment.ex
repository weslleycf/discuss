defmodule Discuss.Comment do
    use Ecto.Schema
    import Ecto.Changeset
    alias  DiscussWeb.Poison

    @derive {Jason.Encoder, only: [:comment, :user]}
    
    schema "comments" do
        field :comment, :string
        belongs_to :user, Discuss.User
        belongs_to :topic, Discuss.Topic
        
        
        timestamps()


    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:comment])
        |> validate_required([:comment])

    end

end
