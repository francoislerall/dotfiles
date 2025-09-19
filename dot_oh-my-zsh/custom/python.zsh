if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
fi

if [ -f "env/bin/activate" ]; then
    source env/bin/activate
fi

if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
fi
