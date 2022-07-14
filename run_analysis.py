import os
import subprocess
import sys

class CLI:
    
    def __init__(self):
        self.notebook_file = 'analysis.ipynb'
        self.report_file = 'report.html'
    
    def exec_notebook(self):
        """Execute the Jupyter Notebook."""
        
        subprocess.call([
            'jupyter-nbconvert',
            '--execute',
            '--inplace',
            '--to', 'notebook',
            self.notebook_file])
        
    def generate_html(self):
        """Converted the executed Jupter Notebook to an HTML report with templating.
        """

        subprocess.call([
            'jupyter-nbconvert',
            self.notebook_file,
            '--to', 'html',
            '--no-input',
            '--output',
            self.report_file,
            '--template', 'flowkey'])
    
if __name__ == '__main__': 
    cli = CLI()
    cli.exec_notebook()
    cli.generate_html()