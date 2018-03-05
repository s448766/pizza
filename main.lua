-----------------------------------------------------------------------------------------
--
--
-- made by Md Faiyaz Hossain
--created in 2018-02-28
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0.6, 0.3, 1)

local titleOfTheShopTextField = display.newText( "Welcome", display.contentCenterX - 700, display.contentCenterY - 600, native.systemFont, 170 )
titleOfTheShopTextField:setFillColor( 99, 10, 88 )
 
local InstructionsOnHowToUseTheShopTextField = display.newText( "Enter the inch of pizza", display.contentCenterX - 600, display.contentCenterY - 300, native.systemFont, 135 )
InstructionsOnHowToUseTheShopTextField:setFillColor( 99, 10, 88 )

local diamiterOfPizzaTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 100, 1400, 140 )
diamiterOfPizzaTextField.id = "length textField"

local subtotalTextField = display.newText( "subtotal", display.contentCenterX - 650, display.contentCenterY + 400, native.systemFont, 100 )
subtotalTextField.id = "subtotal"
subtotalTextField:setFillColor( 1, 1, 1 )

local taxTextField = display.newText( "tax", display.contentCenterX + 50, display.contentCenterY + 500, native.systemFont, 100 )
taxTextField.id = "tax"
taxTextField:setFillColor( 1, 1, 1 )

local totalTextField = display.newText( "Total", display.contentCenterX + 700, display.contentCenterY + 600, native.systemFont, 100 )
totalTextField.id = "Total"
totalTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +700
calculateButton.y = display.contentCenterY -100
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )
    -- this function calculates the subtotal,tax,and total
 
    local diamiterOfPizza
	local tax 
	local subtotal
	local total
 
    diamiterOfPizza = diamiterOfPizzaTextField.text
    tax = taxTextField.text
    subtotal = subtotalTextField.text
    total = totalTextField.text
    subtotal = 0.75 + 1.00 + (diamiterOfPizza * 0.5)
    tax = subtotal * 0.13
    total = subtotal + tax
    -- print( subtotal, tax, and Total )
   subtotalTextField.text = "Subtotal: " .. subtotal.."$"
   taxTextField.text = "Tax:" .. tax .."$"
   totalTextField.text = "Total:" ..total.."$"

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )