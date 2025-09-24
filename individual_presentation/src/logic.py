class Firm:
    def __init__(self, name:str, output:float, tax_rate:float, emissions_intensity:float, profit:float):
        self.name = name
        self.output = output
        self.emissions_intensity = emissions_intensity
        self.profit = profit
        self.tax_rate = tax_rate


    def emissions(self) -> float:
        return self.output * self.emissions_intensity

    def tax_liability(self) -> float:
        return self.emissions()*self.tax_rate

    def profit_after_tax(self) -> float:
        return self.profit - self.tax_liability()