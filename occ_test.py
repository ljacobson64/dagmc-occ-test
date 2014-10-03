# Define constants

l_box = 100

writer = open("occ_test_1.jou",'w')

# ======================================================================
# Define constants
# ======================================================================

print >> writer, "#{_l_box=%f}" % (l_box)

# ======================================================================
# Create the geometry
# ======================================================================

print >> writer, "brick x {_l_box} y {_l_box} z {_l_box}"
print >> writer, "#{_mod=Id(\"volume\")}"

# ======================================================================
# Save and export geometry to .step
# ======================================================================

print >> writer, "set attribute on"
print >> writer, "export step \"occ_test_1.step\" overwrite"

writer.close()
