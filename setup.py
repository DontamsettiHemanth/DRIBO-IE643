from setuptools import setup

setup(name='DRIBO',
      packages=['DRIBO'],
      version='0.0.1',
      install_requires=[
          'numpy', 'torch', 'tqdm', 'pygame', 'scikit-video', 'opencv-python',
          'gtimer', 'gym', 'procgen',
          'tensorboard', 'torchvision', 'termcolor','dm_control','dmc2gym'#,'rlkit'
      ])
