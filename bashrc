cat << EOF
Welcome to your development container. Happy coding!
EOF

export PS1="\[\e[36m\]\${OKTETO_NAMESPACE:-okteto}:\[\e[32m\]\${OKTETO_NAME:-dev} \[\e[m\]\W> "

mkdir -p ~/.streamlit/

echo "\
[general]\n\
email = \"sd.md.2000@gmail.com\"\n\
" > ~/.streamlit/credentials.toml

echo "\
[server]\n\
headless = true\n\
enableCORS=false\n\
port = $PORT\n\
" > ~/.streamlit/config.toml
