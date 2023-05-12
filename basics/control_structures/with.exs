# this is the same as
result = case Repo.insert(changeset) do
  {:ok, user} ->
    case Guardian.encode_and_sign(user, :token, claims) do
      {:ok, token, full_claims} ->
        important_stuff(token, full_claims)

      error ->
        error
    end

  error ->
    error
end

same_as_result = 
  with {:ok, user} <- Repo.insert(changeset),
       {:ok, token, full_claims} <- Guardian.encode_and_sign(user, :token, claims) do
  important_stuff(token, full_claims)
end

IO.inspect(result)
IO.inspect(same_as_result)
