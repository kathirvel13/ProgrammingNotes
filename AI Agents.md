#AI #Networkchuck 
# FOSS AI Agent on local machine
## Requirements
[Python](https://www.python.org/downloads/)
[ollama](https://github.com/ollama/ollama)
[browser-use](https://github.com/browser-use/browser-use)
[web-ui](https://github.com/browser-use/web-ui)
API keys from [openrouter](https://openrouter.ai/)

## Youtube Links
[Build ANYTHING With AI Agents For FREE! - Ishan Sharma](https://www.youtube.com/watch?v=u3c8OQaeLWo)
[ChatGPT Operator is expensive....use this instead - NetworkChuck](https://www.youtube.com/watch?v=sxTNACldK3Y)

## Installing and set-up ollama
Ollama is used to run language models on local machine.

To install and run a model
```shell
ollama run <model_name>
ollama run deepseek-r1:8b
```

To list all the installed models
```shell
ollama list
```

## Browser-use and Web-ui
Browser-use is the easiest way to connect your AI agents with the browser. Web-ui provides a GUI interface to interact with browser-use.

### Installing Browser-use
With pip (Python>=3.11)
```shell
pip install browser-use
```

Install [playwright](https://playwright.dev/) for browser testing and web scraping.
```shell
playwright install
```

### Installing web-ui
[Installation Guide](https://github.com/browser-use/web-ui?tab=readme-ov-file#option-1-local-installation)
```shell
git clone https://github.com/browser-use/web-ui.git
cd web-ui
pip install virtualenv
python3 -m venv .venv
pip install -r requirements.txt
cp .env.example .env
notepad .env
```

To run web-ui
```shell
python webui.py --ip 127.0.0.1 --port 7788
```

# AI Agents on cloud
[crewai](https://www.crewai.com/)
[n8n](https://www.crewai.com/)
