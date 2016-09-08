# 'do' shortcut:

mean = with count = Enum.count(values),
            sum   = Enum.sum(values),
       do:  sum / count

# Same as:

mean = with count = Enum.count(values),
            sum   = Enum.sum(values),
       do
            sum / count
       end
