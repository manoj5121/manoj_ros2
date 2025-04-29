from setuptools import setup

package_name = 'my_mobile_manipulator_bringup'

setup(
    name=package_name,
    version='0.0.1',
    packages=[],
    py_modules=[],
    data_files=[
        ('share/' + package_name + '/launch', ['launch/my_mobile_manipulator.launch.py']),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='manoj',
    maintainer_email='your@email.com',
    description='Launch files to bring up mobile manipulator with Nav2 and MoveIt',
    license='MIT',
    tests_require=['pytest'],
    entry_points={},
)
