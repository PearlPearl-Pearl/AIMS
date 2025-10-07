class Firm:
    """
    A class representing a firm participating in a carbon tax system.

    Attributes
    ----------
    name : str
        The name of the firm.
    output : float
        The firm's total level of production (in appropriate output units).
    tax_rate : float
        The carbon tax rate applied per unit of emissions (e.g., $ per ton of CO₂).
    emissions_intensity : float
        The amount of emissions produced per unit of output (e.g., tons CO₂ per unit of output).
    profit : float
        The firm's profit before taxes (in monetary units).

    Methods
    -------
    emissions() -> float:
        Returns the firm's total emissions based on its output and emissions intensity.
    
    tax_liability() -> float:
        Calculates the total carbon tax owed by the firm.
    
    profit_after_tax() -> float:
        Computes the firm's profit after paying the carbon tax.
    """

    def __init__(self, 
                 name: str, 
                 output: float, 
                 tax_rate: float, 
                 emissions_intensity: float, 
                 profit: float):
        """
        Initializes a Firm instance with its production, tax, and emissions parameters.

        Parameters
        ----------
        name : str
            The name of the firm.
        output : float
            The firm's total production level.
        tax_rate : float
            The carbon tax rate applied per unit of emissions.
        emissions_intensity : float
            The amount of emissions per unit of output.
        profit : float
            The firm's profit before paying the carbon tax.
        """
        self.name = name
        self.output = output
        self.emissions_intensity = emissions_intensity
        self.profit = profit
        self.tax_rate = tax_rate

    def emissions(self) -> float:
        """
        Calculate the firm's total emissions.

        Returns
        -------
        float
            The total emissions produced by the firm.
        """
        return self.output * self.emissions_intensity

    def tax_liability(self) -> float:
        """
        Calculate the firm's carbon tax liability.

        Returns
        -------
        float
            The total carbon tax owed by the firm.
        """
        return self.emissions() * self.tax_rate

    def profit_after_tax(self) -> float:
        """
        Calculate the firm's profit after paying the carbon tax.

        Returns
        -------
        float
            The firm's profit after accounting for its carbon tax liability.
        """
        return self.profit - self.tax_liability()
