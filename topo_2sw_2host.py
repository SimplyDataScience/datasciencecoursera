"""Custom topology example

Two directly connected switches plus a host for each switch:

   host --- switch --- switch --- host

Adding the 'topos' dict with a key/value pair to generate our newly defined
topology enables one to pass in '--topo=mytopo' from the command line.
"""

from mininet.topo import Topo

class MyTopo( Topo ):
    "Simple topology example."

    def __init__( self ):
        "Create custom topo."

        # Initialize topology
        Topo.__init__( self )

        # Hosts
        leftHost = self.addHost( 'h1' )
        rightHost = self.addHost( 'h2' )
        bottomHost = self.addHost( 'h3' )
        sixthHost = self.addHost( 'h4' )

        # Switches
        leftSwitch = self.addSwitch( 's3' )
        rightSwitch = self.addSwitch( 's4' )
        bottomSwitch = self.addSwitch( 's5' )
        sixthSwitch = self.addSwitch( 's6' )

        # Add links
	# the goal is to create a network which contains
	# loops. once we run the pox spanning_tree program
	# it will remove redundant links and allow you to test 
	# ping.
        self.addLink( leftHost, leftSwitch )
        self.addLink( leftSwitch, rightSwitch )
        self.addLink( leftSwitch, bottomSwitch )
        self.addLink( rightSwitch, rightHost )
        self.addLink( rightSwitch, bottomSwitch )
        self.addLink( bottomSwitch, bottomHost )
        self.addLink( sixthSwitch, leftSwitch )
        self.addLink( sixthSwitch, rightSwitch )
        self.addLink( sixthSwitch, sixthHost )


topos = { 'mytopo': ( lambda: MyTopo() ) }
