defmodule Skelauth.EmailTemplate do
    def conf_template() do
    """
    Hi, please go to the link below to confirm your email.

    <a href="https://maz.me?con_key=<%= conf_key %>">Confirm email</a>

    """
    end
end