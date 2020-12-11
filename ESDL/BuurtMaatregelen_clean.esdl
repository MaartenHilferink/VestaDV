<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="943332af-a463-4365-ab03-618ec87073fb" name="S1a_B_LuchtWP_Havenstad">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="3b79d051-d844-4b6d-aad8-1200dc972cae">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="217c25d8-367e-4862-89fb-bee7b15dfd02">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="energy_GJ_yr" perTimeUnit="YEAR" multiplier="GIGA" unit="JOULE" physicalQuantity="ENERGY"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cost_EURO_yr" perTimeUnit="YEAR" unit="EURO" physicalQuantity="COST"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="energy_GJ_yr_ha" perTimeUnit="YEAR" perUnit="HECTARE" unit="JOULE" physicalQuantity="ENERGY" multiplier="GIGA"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cost_EURO_TON" perUnit="GRAM" perMultiplier="MEGA" unit="EURO" physicalQuantity="COST"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="emission_TON_yr" perTimeUnit="YEAR" multiplier="MEGA" unit="GRAM" physicalQuantity="EMISSION"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="f288d698-5026-4ed7-8ec8-d528fc200ca9" aggrType="PER_COMMODITY" name="y2050">
    <area xsi:type="esdl:Area" name="Havenstad" id="Havenstad">
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631000">
        <KPIs xsi:type="esdl:KPIs" id="f7bbdb09-41cf-4cae-9d90-9069ef47fff7">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="a50c7cbc-04f1-423d-984f-234ef8efdeae">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="22806711.0" id="86ef8a0f-610c-434f-9538-9130718d027a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="4602.0" id="fcba18b1-3545-42c5-8dca-de0e7dc413b8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="22806711.0" id="b27997d5-7938-4071-8fed-4807ce5d854c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="335351.6214" id="2d815717-ccb7-4d22-94ce-86c82752d997">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="436250.30799999996" id="5c0c8665-efdd-4ca3-8b78-5c1da1f6b8fa">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="31669.927499999998" id="d6048fe2-6443-40a6-8d2a-72ceeee37d4f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" value="28.3807302" id="2301420f-8735-4ee5-8fb7-e35e02d4fece"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="6618.4275" id="0ea9e8b5-2a8a-4389-83b3-a8aee5074c26">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="77276f6c-223b-4e00-b144-2dd54679c9c5" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="473787dd-7e42-4f90-9056-c22f7f896f59" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.408682" lon="4.871249"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="bf3e82b5-d20c-46f6-ae67-147e3e063bc1" name="aansl_gasketel" numberOfBuildings="16630" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9997594708358388" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.00012026458208057727" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.00012026458208057727" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="b061d4d5-d694-46d4-b1e5-b8d59c11c889" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9649f599-83fb-43ff-8d04-b9c83a3bdac5" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="266505.519" id="fd683a2b-40b7-4f79-a47e-c8a6116dbb89">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="952a14d5-07a7-4d27-b53d-f1b808bf7005" connectedTo="7fe6f2cf-3c78-4adb-9f4c-a1590392f42f" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="ec2d12a1-aa32-421a-93a8-7024393ea3bc" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9a6c8b45-809a-4576-8f24-de0ffe89d7f5" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="170681.931" id="a2919eca-ac5c-4ce5-b5f0-e06f8e26120e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="23250974-3165-4f6f-8505-0ad3ed6c7523" connectedTo="f3edbfce-ca26-48f1-b7b5-124191893e1a 2091f795-0521-4ab4-bda4-bb33dfab3403" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="20b7095b-dbc2-49e7-9d50-9a06f457c053" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="bea57990-9308-4e89-a01b-8230d3c3ea23" connectedTo="b05f53ca-c002-4d4b-9d77-3295f45b7884">
              <profile xsi:type="esdl:SingleValue" value="185867.029" id="5fb67f79-31a1-4bcb-9e36-be4d1ad07fca">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="ba87baf0-3adb-4132-ac2d-708e5b3805e9" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="30da9217-a52f-442b-a34b-621faf74c4e2" connectedTo="b05f53ca-c002-4d4b-9d77-3295f45b7884">
              <profile xsi:type="esdl:SingleValue" value="63206.8" id="5570c2df-1989-4856-b7dc-706273442d6c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6c6b750a-cf23-4507-a8ee-34f99dd99268" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f3edbfce-ca26-48f1-b7b5-124191893e1a" connectedTo="23250974-3165-4f6f-8505-0ad3ed6c7523">
              <profile xsi:type="esdl:SingleValue" value="1.19805213" id="d68ac42f-ab3a-4399-9981-c69501323da7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0e860b9b-35af-4de4-ada9-4d01857dab64" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2091f795-0521-4ab4-bda4-bb33dfab3403" connectedTo="23250974-3165-4f6f-8505-0ad3ed6c7523">
              <profile xsi:type="esdl:SingleValue" value="165930.846" id="1831ca65-bf08-4437-85fc-524239ef2ac6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="311b702d-6e95-459a-9683-2aa387576da3" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="7fe6f2cf-3c78-4adb-9f4c-a1590392f42f" name="InPort" connectedTo="952a14d5-07a7-4d27-b53d-f1b808bf7005"/>
            <port xsi:type="esdl:OutPort" id="b05f53ca-c002-4d4b-9d77-3295f45b7884" connectedTo="bea57990-9308-4e89-a01b-8230d3c3ea23 30da9217-a52f-442b-a34b-621faf74c4e2" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.408682" lon="4.863946"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="b3ac41e8-7f4b-4dcc-a920-c7fcf8a1107d" name="aansl_gasketel" floorArea="598036.7" numberOfBuildings="304" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.24671052631578946" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.7532894736842105" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="4d366fb7-dafc-4df1-b13b-ece17e09de89" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b2271530-b619-4d0f-837f-216414880c94" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="84408.7674" id="ce96ff3a-b2d3-47bd-8e58-9eeeff33bc07">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="66a04ecc-4157-4707-9977-2f02ae754a48" connectedTo="571c27c6-690d-4909-9420-f8450f0c7444" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="0a001f3b-51d5-4a3f-a504-7cd5c2ff3450" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b3bb48aa-3a2b-45a6-99ab-edb63f752a31" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="265568.377" id="b09c4d85-5f33-4fdd-b250-8f2d84b82a6a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e1cf45a8-fb89-47e8-8d70-5b7dcee7ac05" connectedTo="cdb87b97-bcca-4946-b22f-4fa9371f90ef" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="64fef7da-01d5-4ab7-bd00-a306266e888c" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f6b6c103-6fc1-4ec4-a5ee-d77461579dfa" connectedTo="11ab09b0-8136-4f15-a580-c9fee42dc8a8">
              <profile xsi:type="esdl:SingleValue" value="82886.3095" id="e07f6bda-d7fd-43af-b8f9-5b9ca368414f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="1b32f555-3a1c-4659-b9f7-1f5c59311450" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3de18c32-0a56-4237-888f-10c9e83d0833" connectedTo="11ab09b0-8136-4f15-a580-c9fee42dc8a8">
              <profile xsi:type="esdl:SingleValue" value="3391.48286" id="0a0cdef3-2ee8-4309-9f34-7c4bde44251b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="f2ad19f4-c44f-41d7-b715-a34d5d992fd7" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="803ab0bf-5534-48e0-a589-68d694e3a211" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="74433.171" id="37a7dbb1-fea1-4bbb-9fb3-db70b9446978">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3d31298a-5e0f-4c2c-8dd2-aa32f65bf3fb" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="cdb87b97-bcca-4946-b22f-4fa9371f90ef" connectedTo="e1cf45a8-fb89-47e8-8d70-5b7dcee7ac05">
              <profile xsi:type="esdl:SingleValue" value="242661.261" id="92243fd5-b4c8-4ea4-91c8-c1d206077ee6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="8fc5a0a7-5bcc-4331-8b62-eb3742fec69a" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="571c27c6-690d-4909-9420-f8450f0c7444" name="InPort" connectedTo="66a04ecc-4157-4707-9977-2f02ae754a48"/>
            <port xsi:type="esdl:OutPort" id="11ab09b0-8136-4f15-a580-c9fee42dc8a8" connectedTo="f6b6c103-6fc1-4ec4-a5ee-d77461579dfa 3de18c32-0a56-4237-888f-10c9e83d0833" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.40346" lon="4.856643"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631001">
        <KPIs xsi:type="esdl:KPIs" id="b7f5debe-c92f-4a40-98d8-385d30f9f053">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="712da1ff-f904-48de-a735-59f1d13a55a0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="7195247.0" id="e74b0e94-64b7-419f-a604-92288aa8f031">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="5239.0" id="4094296b-6b0c-449e-994a-ea5ce1fb3fed">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="7195247.0" id="71219487-12ca-4ccc-8d51-b1982167efe6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="103453.3226" id="d6827a19-08d9-460c-bf8d-0925b7e1477b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="117363.0456" id="d80c40d6-b575-4b08-a2e9-55983dc291c9">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="9582.699" id="5796fd06-e550-44d5-ab6d-c99492678d40">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" value="13.99386666" id="1300c87e-a1e1-4ff4-99f8-acba33c4d403"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="1793.199" id="e061dfb1-d453-4780-9e29-649742d80f77">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="28b4b26b-dd61-4511-882d-d07c2b6d35ad" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="1122d70a-1b1a-4bec-8a0b-398dc0af4388" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.396988" lon="4.853145428571429"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="4b2e8120-7f66-427c-a9ba-80b6d04b3632" name="aansl_gasketel" numberOfBuildings="5179" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9996138250627534" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.0003861749372465727" energyLabel="LABEL_A"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="aa97fac7-1c03-4e45-97a8-e4b58da43e28" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="897782c0-3437-47e3-a50c-19b2a92d3c58" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="82949.1566" id="11ad19a5-017c-45e3-a6b4-def180fc5d51">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="7bf7050d-b700-493a-a1dd-e1f1b3e369c2" connectedTo="86056825-99c9-4be4-9198-d9f76f204e91" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="9f95c589-1442-4a55-9bd1-24647d62dd43" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="050791e2-0189-4b04-a043-6326f05516d1" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="53154.9159" id="247229dd-9d1c-4d1e-8ff9-ed6137ac70ba">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="a5b72e24-b752-4f22-a20f-75efc3515ca8" connectedTo="96986ac5-7a16-4129-9ebc-187d171edeff" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="5f2e49da-4246-4714-aa90-d755886a7990" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5e19d2ba-73a4-40c5-bd70-f859e44a3033" connectedTo="d3c1b79e-8ddf-4f92-83b2-dc3bc16d12c7">
              <profile xsi:type="esdl:SingleValue" value="57827.6006" id="287e0efd-0d64-4128-b744-d8f28b19b91c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="94d44eda-9376-435b-9ea2-6a4d350e1ffa" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f41ea38f-d6a9-4959-b198-e2afa21caafd" connectedTo="d3c1b79e-8ddf-4f92-83b2-dc3bc16d12c7">
              <profile xsi:type="esdl:SingleValue" value="19688.9" id="6bfc031c-cdfc-4451-b30a-b285a6b252ef">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="250.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a19b8feb-0b5c-40a7-a6f4-992cf2552ecd" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="96986ac5-7a16-4129-9ebc-187d171edeff" connectedTo="a5b72e24-b752-4f22-a20f-75efc3515ca8">
              <profile xsi:type="esdl:SingleValue" value="51675.7145" id="259788d0-17b7-4378-af78-b25902a3d296">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="375.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="b6a0a2c7-393c-4d12-916b-4a54cbe3cd86" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="86056825-99c9-4be4-9198-d9f76f204e91" name="InPort" connectedTo="7bf7050d-b700-493a-a1dd-e1f1b3e369c2"/>
            <port xsi:type="esdl:OutPort" id="d3c1b79e-8ddf-4f92-83b2-dc3bc16d12c7" connectedTo="5e19d2ba-73a4-40c5-bd70-f859e44a3033 f41ea38f-d6a9-4959-b198-e2afa21caafd" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.3990465" lon="4.853145428571429"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="fdd5f99c-1881-4223-b77a-ad81a0249eff" name="aansl_gasketel" floorArea="146021.5" numberOfBuildings="64" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.25" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.75" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="070a7df7-d518-41d5-b642-c969fbaa25b6" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8fb6c6c8-4395-4f41-a37e-a6377b44fede" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="25348.702" id="ed28a0c1-b3f6-4654-abf5-0e6b3f328181">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e34d3f8b-8b76-4b28-ae75-0175a6f964ff" connectedTo="68059973-52fd-42bb-8c25-70e3653f8bba" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="39c68789-95df-4304-8dbc-fd7fd1da7889" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="49b9e10d-f886-496f-9dad-d260601a8c2b" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="64208.1297" id="dfa7a99a-7420-43ac-8568-8d9bc6c25abe">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bc5ddea1-b321-4b65-8646-ed4f975891f3" connectedTo="25846786-b7b6-4e98-b52a-b6ef30b48268" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="481a6810-9b12-47fb-b7c6-e03fb99c1293" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c7bde8ba-59fd-4035-a7e8-3f2479fa17b4" connectedTo="54ae980d-ff92-4f4f-ac2c-eb3854243e76">
              <profile xsi:type="esdl:SingleValue" value="24978.7088" id="c76bc965-539d-4bf6-bc39-f52ba8ad6423">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="4c1d0e3a-0d63-4490-8995-6c18922c074b" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="6c5deeea-2306-47e6-ad7e-b6aefef38a0f" connectedTo="54ae980d-ff92-4f4f-ac2c-eb3854243e76">
              <profile xsi:type="esdl:SingleValue" value="958.113225" id="514b237d-ba3e-4e60-8c7b-58ffa63cee85">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="faafdfd4-e15d-4e5a-bb07-fe18c0c42490" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="c52c7eb4-c952-40f1-a8e0-2c54fe6245c6" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="19191.4937" id="587a3989-10c0-4536-a020-905a7831fffc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f844a612-85cd-4e45-a034-329f3d5404e3" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="25846786-b7b6-4e98-b52a-b6ef30b48268" connectedTo="bc5ddea1-b321-4b65-8646-ed4f975891f3">
              <profile xsi:type="esdl:SingleValue" value="58229.3417" id="296565c2-1a06-4200-9277-5f3ec7522203">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="2557699d-757a-41c8-a536-889c871f935c" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="68059973-52fd-42bb-8c25-70e3653f8bba" name="InPort" connectedTo="e34d3f8b-8b76-4b28-ae75-0175a6f964ff"/>
            <port xsi:type="esdl:OutPort" id="54ae980d-ff92-4f4f-ac2c-eb3854243e76" connectedTo="c7bde8ba-59fd-4035-a7e8-3f2479fa17b4 6c5deeea-2306-47e6-ad7e-b6aefef38a0f" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.3990465" lon="4.850201285714285"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631100">
        <KPIs xsi:type="esdl:KPIs" id="fea31e03-0d0f-4970-90be-849f7277803e">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="666673cb-1020-4b47-ac24-b932722f48ea">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="1707944.0" id="5eb51e1c-ec05-49b9-9f3e-aa0bd6cd0239">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="823.0" id="1ca847f9-51a4-48ed-ae19-8f0bbef80a7d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="1707944.0" id="dd87611c-5746-4c7d-bf76-f99f4037976c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="32889.995046" id="d10448df-64a0-4a44-b9e8-77d721b84aa6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="89513.3896" id="3151bebe-d07a-4232-bd0a-2d62804991f6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="2769.8505" id="88d64280-6979-4c4d-86c0-949d59b2722c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="2e635b26-04c9-4d77-acad-56cee06dae37"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="2756.3505" id="8df7475b-b83e-4bcb-a427-5789f6297339">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="f3583e41-bd8f-4cfc-8e87-4cadb7d42392" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="8d3f0603-6063-47e3-ac9e-1bc898da1a1d" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.391414999999995" lon="4.831518555555555"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="a877f24f-3652-4692-b40b-1ad1dee28226" name="aansl_gasketel" numberOfBuildings="8" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="1.0" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="9755fe89-3ea3-40b2-bce7-c49664ea02fe" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b65d0b03-cc15-49fe-9a82-757ea98f9dd4" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="1941.43482" id="6d66c840-5423-40c3-a979-2868d7cf42dc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b49cd085-d4a0-408d-b693-029c8020bff4" connectedTo="f3e6d78e-36e3-4e81-af39-d69902baf6e7" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="fe0e683e-04c8-4c0f-a1cf-e476e4c1380f" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9c56781d-63e1-42e5-84ea-69ab5f9663aa" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="10239.866" id="0854eb20-f713-489c-a998-1b3e676c32fc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="03da30b6-5177-406c-beb4-1f21f55f6bb7" connectedTo="743986f2-b532-42f4-af03-044ad0248dcc c04bf119-5add-4759-9352-6e7b1f1e13e9" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="9d9e3ac3-ac38-4acc-b6a8-3196acc4c6e2" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9e3444e7-729a-4d73-82bc-f2cde083061b" connectedTo="94884a35-8595-4812-9539-d3605addff2d">
              <profile xsi:type="esdl:SingleValue" value="137.845446" id="c92f4953-9839-469a-a000-a8d0f3aabf95">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="1b110de7-a576-48fd-9763-d52eb360279c" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7df25c51-24a1-4d7a-a0af-338c8871041b" connectedTo="94884a35-8595-4812-9539-d3605addff2d">
              <profile xsi:type="esdl:SingleValue" value="59.6" id="5f09fbd3-2d47-495e-95a9-03b32274132a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="169a0624-e9a2-4351-a31a-19dc1ffbf225" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="743986f2-b532-42f4-af03-044ad0248dcc" connectedTo="03da30b6-5177-406c-beb4-1f21f55f6bb7">
              <profile xsi:type="esdl:SingleValue" value="4.25807686" id="93c9ad13-21ce-45a1-a379-83a1701d0fae">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b9edd73e-34a9-45ff-84bf-8b70f2e3bf6f" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c04bf119-5add-4759-9352-6e7b1f1e13e9" connectedTo="03da30b6-5177-406c-beb4-1f21f55f6bb7">
              <profile xsi:type="esdl:SingleValue" value="72.58" id="313bd485-0800-4ee3-a53b-6474b0fb7d4f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="3f83c73f-978c-43a2-b2a3-fda4bd78a91a" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="f3e6d78e-36e3-4e81-af39-d69902baf6e7" name="InPort" connectedTo="b49cd085-d4a0-408d-b693-029c8020bff4"/>
            <port xsi:type="esdl:OutPort" id="94884a35-8595-4812-9539-d3605addff2d" connectedTo="9e3444e7-729a-4d73-82bc-f2cde083061b 7df25c51-24a1-4d7a-a0af-338c8871041b" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.391414999999995" lon="4.821278111111111"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="00db7533-8846-47ae-9c43-43d1c4b01dda" name="aansl_gasketel" floorArea="186269.15" numberOfBuildings="89" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.10112359550561797" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.898876404494382" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="9871766a-fda8-4173-b018-d33d0d28873d" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="fe27f2be-72a5-4504-a324-7c1b80a29650" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="26606.5442" id="98bce428-8575-4daa-8718-e0858358120d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="3b8a9657-4dc4-41d3-808e-487d8dd3606a" connectedTo="c40d5c91-8d8e-440f-8a88-527e1a523848" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="32e2765b-816c-483e-8a8c-df6d59dbfe74" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="75b5db61-b757-4e55-8a44-bcda594db0c1" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="79273.5236" id="69b3cb20-a17d-4584-91ea-b976e89c7dc8">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="c02f65aa-1303-4f9d-b033-fc19509620df" connectedTo="90579e56-eee5-415e-bcbf-67e8b7c3bdca" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="d5343742-aa57-4a6e-bd93-885da7bb0114" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="15eff721-9db2-48ce-9f6f-7b4062b2ecb2" connectedTo="ff531a06-b0c2-459b-921f-46541b01af75">
              <profile xsi:type="esdl:SingleValue" value="31751.606" id="1e79e408-9147-4f80-aad2-17c549e2e8e1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="1f88eb66-3340-4cfa-a5b1-f68f4479226d" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0c7e7db2-27b4-45bc-ae3f-82700411c6d4" connectedTo="ff531a06-b0c2-459b-921f-46541b01af75">
              <profile xsi:type="esdl:SingleValue" value="940.943648" id="01ba3e3e-a8b7-4967-af36-31b9d10fb83f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="7da995c8-d7b8-428e-bdca-2b28e5a3a1e8" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="5ae301c8-542f-465c-91c1-22441a70daa7" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="25295.934" id="3bd0b1fa-4798-4ee1-9308-d0b5fd100a57">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="7d3e61a5-fe66-40cc-9fed-4c5142fd24ce" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="90579e56-eee5-415e-bcbf-67e8b7c3bdca" connectedTo="c02f65aa-1303-4f9d-b033-fc19509620df">
              <profile xsi:type="esdl:SingleValue" value="80698.1833" id="ecc18637-d0ff-4986-8427-4069bd5d007b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="108b0874-5882-4119-a0af-794aee9227f6" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="c40d5c91-8d8e-440f-8a88-527e1a523848" name="InPort" connectedTo="3b8a9657-4dc4-41d3-808e-487d8dd3606a"/>
            <port xsi:type="esdl:OutPort" id="ff531a06-b0c2-459b-921f-46541b01af75" connectedTo="15eff721-9db2-48ce-9f6f-7b4062b2ecb2 0c7e7db2-27b4-45bc-ae3f-82700411c6d4" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.391414999999995" lon="4.828958444444444"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631105">
        <KPIs xsi:type="esdl:KPIs" id="cfa7850a-e6dd-4010-8c59-1e8ac7c72efb">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="3389943a-2372-4fa3-ae4d-dabcf3a87997">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="5780563.0" id="7f5cf38f-dc29-407b-90b0-608f4c431772">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="439.0" id="71d0bf34-98cd-49bb-8f1a-9cb8f7fdf40e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="5780563.0" id="6cd6dbfa-b9da-47ab-b5aa-8df4facbbee3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="238788.4095" id="3a6d55a0-5eb8-4c52-99ef-708be2fdc7c2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="458377.51599999995" id="b78eea66-dbd7-44bb-9eed-5585749c19d7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="26937.6615" id="4dc15117-430b-491e-86c7-72f4dbf139df">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="f343a7a5-51e7-4660-8110-5cada776d02e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="19014.6615" id="ad1708c2-e41f-412d-902a-618b743e3352">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="b8d20ea0-aa7c-4dcc-ae79-af53e646ef31" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="5046a5cc-9f9c-45e0-9bca-d1d85821e6de" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.38835266666667" lon="4.82244475"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="484f7fa5-048c-49f8-9921-b4ff70fbdb32" name="aansl_gasketel" numberOfBuildings="5879" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.897091342064977" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.09270284061915292" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.010205817315870046" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="33f62a9f-8218-432a-8f74-3b83a24e2743" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e02d5d43-87e1-4bd2-a848-2fe0ef642339" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="73508.0479" id="245939f6-99f8-4388-85f8-4980c3cc6bbc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="460f10aa-a780-43ce-9652-18809dd2c3b3" connectedTo="aa826fc0-cad4-4670-8aec-ecce03135edc" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="f14175c9-cd58-489c-9dd6-f71e4dbc650f" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7841cc99-8a2f-46fc-a955-8788ee78d1cd" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="181786.894" id="1bff15ff-47bb-4a3f-803e-f75b5722554d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="0f7cc1c3-962c-4f82-a44a-f1edbfecae77" connectedTo="8c25f411-7e06-47d8-9d9c-4f898c91c3c9" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="057fdd80-8ede-40e8-9d8c-289175b5fcbc" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="eadbd9d2-c79f-4f28-8f07-b5df1419ab0a" connectedTo="0b41041a-c62b-412c-9e21-a9d7af9632e4">
              <profile xsi:type="esdl:SingleValue" value="63277.5525" id="479ea444-b8c6-483d-b01f-45b94fd1fd62">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="2fa589d5-fa75-426b-87e9-d431bf2d813f" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="cd6969ad-4a3d-4852-8176-6c1288198a3e" connectedTo="0b41041a-c62b-412c-9e21-a9d7af9632e4">
              <profile xsi:type="esdl:SingleValue" value="24168.65" id="c320eb0a-a4e7-4ebc-8c55-fcdbddd3bdfd">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="250.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e0f312b3-c2ec-4ea8-9691-1743e42e0ebb" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8c25f411-7e06-47d8-9d9c-4f898c91c3c9" connectedTo="0f7cc1c3-962c-4f82-a44a-f1edbfecae77">
              <profile xsi:type="esdl:SingleValue" value="57609.1752" id="9eb9df8c-0301-476a-b700-a5b827871f49">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="375.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="45434684-5ac7-49ff-88b8-51587931b8ec" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="aa826fc0-cad4-4670-8aec-ecce03135edc" name="InPort" connectedTo="460f10aa-a780-43ce-9652-18809dd2c3b3"/>
            <port xsi:type="esdl:OutPort" id="0b41041a-c62b-412c-9e21-a9d7af9632e4" connectedTo="eadbd9d2-c79f-4f28-8f07-b5df1419ab0a cd6969ad-4a3d-4852-8176-6c1288198a3e" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.38835266666667" lon="4.83522375"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="fa6f5ac6-164a-44c3-b423-7098e6167916" name="aansl_gasketel" floorArea="651872.6" numberOfBuildings="449" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.017817371937639197" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9821826280623608" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="241f8a6f-8bff-401e-a375-adb5ce95e9c2" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d1de8aa6-7d12-4dce-9853-6b84e6ddeec1" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="97053.7592" id="5a089e58-1e0d-46b3-ae11-a46947c524c3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="316b45a5-046e-45b1-af02-ae4048d7e70f" connectedTo="d66a7a7a-da86-46b3-bd4b-f885647ed501" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="3c95f73c-cf88-4ee6-8f15-b68437839600" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="30700211-e62f-464f-afdd-fb46248b211b" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="276590.622" id="c042a73f-10bc-41a2-b6b8-529b95a5a16b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e7371ebb-0966-4545-b10d-87875d04f1ab" connectedTo="77554784-12fc-4a07-a1e7-803b9587543e" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="329774ca-493a-415e-be54-b596b677a17d" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c9b33c95-1806-44e2-a23f-f84042600285" connectedTo="abec336f-df44-4c1e-a8f0-68066b136fed">
              <profile xsi:type="esdl:SingleValue" value="145719.193" id="ed921bd0-a7ea-4a7a-8d2b-d3178f6a1a55">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="cd542685-caf6-47eb-82c6-2294cf4828fe" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c5d06d10-ec51-459e-8018-10541453e6aa" connectedTo="abec336f-df44-4c1e-a8f0-68066b136fed">
              <profile xsi:type="esdl:SingleValue" value="5623.01359" id="c562fa55-2b32-438f-9645-79e891604a59">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c54dde57-7957-41a0-aa66-e5d972d1e3be" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="e2e63605-ac94-4a5a-844c-1ff94fd936af" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="92653.5699" id="fc9f613e-5bb8-4925-bb6f-7b891061c96b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="446f1451-3ef7-48c6-b5b1-1e78964ac23b" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="77554784-12fc-4a07-a1e7-803b9587543e" connectedTo="e7371ebb-0966-4545-b10d-87875d04f1ab">
              <profile xsi:type="esdl:SingleValue" value="245200.008" id="d2bca920-8995-40d8-80cf-6437d6abda53">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="65b38200-4e82-4f27-8b8f-be3e37b62265" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="d66a7a7a-da86-46b3-bd4b-f885647ed501" name="InPort" connectedTo="316b45a5-046e-45b1-af02-ae4048d7e70f"/>
            <port xsi:type="esdl:OutPort" id="abec336f-df44-4c1e-a8f0-68066b136fed" connectedTo="c9b33c95-1806-44e2-a23f-f84042600285 c5d06d10-ec51-459e-8018-10541453e6aa" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.39182733333333" lon="4.8384184999999995"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631200">
        <KPIs xsi:type="esdl:KPIs" id="14856e0c-dc6e-472c-83ec-8de0520b5aef">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="da3e76f1-9b21-4d52-a56a-e1df4fde4539">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="598534.0" id="82ba7f69-29da-4751-afa5-a8fc969c3dda">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="290.0" id="1553ed1a-82de-47a9-b26e-886d7ca0be05">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="598534.0" id="9687bc09-c151-4bdf-ab14-3a19c29e4b65">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="32009.422120000003" id="9a4905ff-5e69-4a08-9758-ed854771ed66">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="44334.0752" id="ab44ebda-67aa-40b4-a92a-82ffd1879bc0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="3705.99" id="afb060ce-55f9-4965-9d2e-e699dbdd5082">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="5852c099-1870-430d-9c41-da0b96d5eda7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="9850.0" id="36e4f217-aa77-4e30-a0c5-ef4afa003bc3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="535d036b-4813-4932-b52d-bcfcfbfa8e61" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="dd9593e2-f1eb-46c3-b8a4-feb6efea3689" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.39640833333333" lon="4.882882333333334"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="2f6814f8-1797-4436-8a06-c03f50eed2c2" name="aansl_gasketel" numberOfBuildings="1265" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9217391304347826" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.0782608695652174" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="9729e472-2123-4076-b17d-6d47df90cd5a" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f1f7fac6-79e3-4d3f-a4b1-1806280beadd" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="22813.0366" id="d3f156c1-2ba4-458e-8a9a-5c3744d31d2e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4ef780a9-33da-4c5e-bb7f-a52948b9d78f" connectedTo="22936b40-5042-4cbc-b051-a7ba7f1f005d" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="6d0c4e48-37e1-49cc-a529-7a77ea207eaf" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a4ad4b2e-deb9-4ec7-89bf-4192b5d145eb" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="15516.7792" id="e091454e-8cfd-487b-ae5b-346b799294e0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="338b2bf0-de52-4ef0-b7dc-b3a38e48e629" connectedTo="d64b1ea4-c650-43d6-b6db-d18c043e0c0a" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="314a5d71-8fb9-4f4c-884f-dc438f2d000f" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8b0c3707-f2dd-4cfd-a4d2-93e73530d443" connectedTo="ddf81430-820a-44b3-9417-251cac2bc760">
              <profile xsi:type="esdl:SingleValue" value="13359.5601" id="88382050-13bc-4efa-9149-73e554985576">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="03baad70-8146-4ba1-b75f-ced0db317e5b" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="62fffb96-1af4-4d68-8b07-1944308a90ea" connectedTo="ddf81430-820a-44b3-9417-251cac2bc760">
              <profile xsi:type="esdl:SingleValue" value="9739.15" id="ca198bb0-4321-4fda-991a-5f05fce915be">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="250.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="90bf5a8e-e589-4c22-b8b2-4f1aa74850f7" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d64b1ea4-c650-43d6-b6db-d18c043e0c0a" connectedTo="338b2bf0-de52-4ef0-b7dc-b3a38e48e629">
              <profile xsi:type="esdl:SingleValue" value="10554.5" id="afced61e-5b40-431a-b4a7-989d30a042a6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="375.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="67acc9a2-fec7-499b-b3f0-7d6572da0d19" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="22936b40-5042-4cbc-b051-a7ba7f1f005d" name="InPort" connectedTo="4ef780a9-33da-4c5e-bb7f-a52948b9d78f"/>
            <port xsi:type="esdl:OutPort" id="ddf81430-820a-44b3-9417-251cac2bc760" connectedTo="8b0c3707-f2dd-4cfd-a4d2-93e73530d443 62fffb96-1af4-4d68-8b07-1944308a90ea" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.393439666666666" lon="4.882882333333334"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0adde90b-1c46-4b57-8de3-02f60e2dc35b" name="aansl_gasketel" floorArea="71942.15" numberOfBuildings="66" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.09090909090909091" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9090909090909091" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="5445c611-1b98-46d8-b194-9bff77af8be2" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e5508e2d-685c-45ab-aa11-f41152cce6c4" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="7936.76758" id="d6b47235-3a88-4bba-838a-3b353d701abd">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="0a68120e-ad23-411b-b7cf-46451d56c702" connectedTo="7b325989-bda1-4a87-8cc7-79197bbb0b57" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="abd7cdf9-6187-4788-a107-8938c2faab93" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a500528b-0ad3-40b6-bf7d-ce47e253abb4" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="28817.296" id="0c3cf218-e1da-4432-823d-238ba96da96b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="a437d003-3f66-4951-b285-aa9cd2930d8b" connectedTo="9e1a893b-3807-4d71-8d4c-fa4c6be1a2ea" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="7390be27-3f74-48dc-903a-b64fc9c20f72" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9205820f-484c-4718-a976-72834c637220" connectedTo="38d97c5b-3690-48fa-9897-db0fc5bb141b">
              <profile xsi:type="esdl:SingleValue" value="8202.06004" id="fa6e0074-6e33-42b0-b4df-f8104ebd622e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="880fd814-98a5-4647-8be7-2a2be13709a9" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="1de8395e-1eb2-4d01-978f-cf244b106ec6" connectedTo="38d97c5b-3690-48fa-9897-db0fc5bb141b">
              <profile xsi:type="esdl:SingleValue" value="708.651987" id="19226e17-0fc4-4e1a-9d1b-ac4d5760c867">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="5b37ac5c-e35f-4eb3-b279-7c7ae2ffe1af" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="8a080d46-9c97-4977-9c20-2b5043cc99ce" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="8758.8238" id="a094ac70-5cf3-4e26-affb-ef8da315c82d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a1ff550b-01aa-4def-aff7-f5582af2ea81" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9e1a893b-3807-4d71-8d4c-fa4c6be1a2ea" connectedTo="a437d003-3f66-4951-b285-aa9cd2930d8b">
              <profile xsi:type="esdl:SingleValue" value="23918.9384" id="4351c4a7-4381-4655-9f6e-3974a3b137f1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="f13e16ec-e231-47bd-ac24-446fec17ceb5" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="7b325989-bda1-4a87-8cc7-79197bbb0b57" name="InPort" connectedTo="0a68120e-ad23-411b-b7cf-46451d56c702"/>
            <port xsi:type="esdl:OutPort" id="38d97c5b-3690-48fa-9897-db0fc5bb141b" connectedTo="9205820f-484c-4718-a976-72834c637220 1de8395e-1eb2-4d01-978f-cf244b106ec6" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.39640833333333" lon="4.888663444444445"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631305">
        <KPIs xsi:type="esdl:KPIs" id="46b91ed9-39c4-404b-b3d6-f033f6cc4ef0">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="6949d908-71a0-427b-b7e7-63f8cee427e8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="932222.0" id="baa9ffa5-a937-4b8e-b10a-17999ef30170">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="479.0" id="65d23514-666a-4a00-accd-aaaf98c46c68">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="932222.0" id="f5aa7758-a801-4218-b46a-a3e89fab7e26">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="24699.50125" id="9ad5c067-0795-4096-a1a7-a947b19b3930">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="11752.775280000002" id="7037d70d-2d6a-40cf-adc7-a7aed9c5bb81">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="1921.5645" id="4b671407-d364-4b42-b3f5-7328c0a80e51">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="8cf1f481-2da2-423c-9a27-628ce7e8a0ef"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="1921.5645" id="44237143-6ebc-49c6-8ae3-5091a0623663">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="0399fa4a-d769-491f-b56b-e760c63edd84" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="bc8d0ba8-c9cf-48ae-810a-dcb72097f277" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.392269" lon="4.872682571428572"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="523429fb-a76b-4fbb-917a-1c96b1a5b52d" name="aansl_gasketel" numberOfBuildings="1074" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.07076350093109869" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9292364990689013" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="d6c9df56-d48e-4aab-b8e9-5a1644e36766" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c2d97ac8-cd1f-4799-90f4-244a4eb70346" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="24199.2417" id="63c75655-c28c-4b8d-a6bb-a437a37af302">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="c846d3e8-5dc2-4306-818a-c7c8d3ee39e8" connectedTo="dc91aff1-a854-421c-a224-9d77c56a4e66" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="43a37537-935a-4293-a6f3-e37daeca924d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ee1fd1c0-bdd6-47da-a08f-4ec22f6a2815" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="9703.61223" id="cb0d4a4b-64e4-4e10-af5c-09031554a05e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bef17b03-22a8-4d1c-b5fc-403c967ac68a" connectedTo="f369eb2d-e31e-4f5f-a47d-ce9be47fff6a 2c74bb5b-700b-4d7c-9571-e85705e32f48" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="16b8f5c4-2f89-4840-b8dc-a973b67f6559" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="555f2c56-c903-4227-bd6e-674313ac8949" connectedTo="c0d2c908-25ed-4e95-b234-792d8be99a0e">
              <profile xsi:type="esdl:SingleValue" value="13314.6781" id="bb7cecc8-a0a3-4d5a-b5f1-96876c926da8">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="888abc95-6627-40c8-827f-c09cb459156b" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="67aba690-c5de-43d2-b50d-72cfa8ae64c7" connectedTo="c0d2c908-25ed-4e95-b234-792d8be99a0e">
              <profile xsi:type="esdl:SingleValue" value="8205.6" id="b05ea1ca-15a4-4030-8480-ce0b19488747">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="44921c6e-de44-467d-9195-50e2272e85ba" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f369eb2d-e31e-4f5f-a47d-ce9be47fff6a" connectedTo="bef17b03-22a8-4d1c-b5fc-403c967ac68a">
              <profile xsi:type="esdl:SingleValue" value="514.168392" id="7b721020-8057-4c5a-9b86-48a98b3fa1fb">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="bec14b1d-52a2-4d69-a02c-ed20944c5d73" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2c74bb5b-700b-4d7c-9571-e85705e32f48" connectedTo="bef17b03-22a8-4d1c-b5fc-403c967ac68a">
              <profile xsi:type="esdl:SingleValue" value="8916.31" id="6d2f4512-30eb-41bd-8c9c-9aeda1d2a1f0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="607f65b5-0d9c-4874-a5b4-dcc22faf063f" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="dc91aff1-a854-421c-a224-9d77c56a4e66" name="InPort" connectedTo="c846d3e8-5dc2-4306-818a-c7c8d3ee39e8"/>
            <port xsi:type="esdl:OutPort" id="c0d2c908-25ed-4e95-b234-792d8be99a0e" connectedTo="555f2c56-c903-4227-bd6e-674313ac8949 67aba690-c5de-43d2-b50d-72cfa8ae64c7" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.392269" lon="4.875868857142858"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0cefe575-917d-4651-bd2b-498d60e86bef" name="aansl_gasketel" floorArea="10897.0" numberOfBuildings="6" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="1.0" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="86fd4c25-f5db-41f3-b762-bd592c082be6" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="eeaa0ba6-d5d8-4af3-bfa9-9b38e8698542" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="3222.74553" id="43ddd1e2-6923-40b6-b317-f3baa6b0c750">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="65d73eba-2e13-4ef8-8e87-180d7c909d2f" connectedTo="a49c5a2f-b9f3-4e9d-aaaa-e70379c49b58" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="8d11727e-8501-477d-9ab7-430fbd75b216" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="09d153ed-1150-48dd-9d60-ca65394bf260" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="2049.16305" id="2415a250-756e-441c-a0ba-0b7a569984ea">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="fdb02e03-6243-4872-bb16-d0d23af43118" connectedTo="aaaa33bc-4bf4-4204-b301-4066a6ee1367" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="2d56a4f3-ce8a-4b51-9015-fc11ec9fee91" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e26ba3be-9f54-4914-846c-9f222910d273" connectedTo="93821408-9b68-42f9-b18d-dbc55cfa395d">
              <profile xsi:type="esdl:SingleValue" value="2791.25069" id="4b2c463f-14a9-42d7-98e8-b7994adbb386">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="2701d843-6d95-4d11-9571-f96b296abde6" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2a26b830-b514-4359-aa69-6a3b8fae3a22" connectedTo="93821408-9b68-42f9-b18d-dbc55cfa395d">
              <profile xsi:type="esdl:SingleValue" value="387.972462" id="4ea711af-07b4-47d0-a819-bc2a6c3a2133">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b65f4f7e-e403-4fde-8267-f39b53db4374" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="ddfe8161-98b8-4418-9136-25597dcafc9b" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2861.12066" id="a97a7794-2789-4a10-9f05-1b1774b2107b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ad374f7c-017e-4910-bd24-8fc2e6755398" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="aaaa33bc-4bf4-4204-b301-4066a6ee1367" connectedTo="fdb02e03-6243-4872-bb16-d0d23af43118">
              <profile xsi:type="esdl:SingleValue" value="1173.313" id="8bfeebc8-ea8f-4e8b-9cf6-9ff2f69a83b9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="d9d922bb-5553-401c-905e-61e0dde778fe" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="a49c5a2f-b9f3-4e9d-aaaa-e70379c49b58" name="InPort" connectedTo="65d73eba-2e13-4ef8-8e87-180d7c909d2f"/>
            <port xsi:type="esdl:OutPort" id="93821408-9b68-42f9-b18d-dbc55cfa395d" connectedTo="e26ba3be-9f54-4914-846c-9f222910d273 2a26b830-b514-4359-aa69-6a3b8fae3a22" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.392269" lon="4.871089428571429"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631306">
        <KPIs xsi:type="esdl:KPIs" id="3450831f-cc73-401e-b8ba-91e54f5b45a5">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="e48ce3bf-61c5-4015-87e9-6369fd4fd90d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="156742.0" id="d4b089c0-f386-4ba3-a53d-c302d5b8f61f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="272.0" id="6e3dddc7-ea16-4741-aeae-e0388ad95fb4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="156742.0" id="e88ab469-d0ba-4dc2-8a51-d3a9b28935c6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="3689.0671" id="7131d50c-3216-4147-a22f-ab85247ae1de">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="7694.11561" id="a89afd88-4517-45ba-ab04-aa4187685eed">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="609.1665" id="f139499c-bee1-4816-b6fa-f4049c94137b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="3a38a774-e28e-4529-b0d1-f8eb380c101e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="1050.0" id="e75a0389-1c56-4710-b0cb-3779383bdb4a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="348ac99b-a496-472c-b7de-ad002e62d2bb" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="e0bff6cd-4165-4ef3-9352-987defe87bd8" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.3869035" lon="4.880481285714286"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="6e86ab89-94a5-465e-8181-cb8256426138" name="aansl_gasketel" floorArea="22763.0" numberOfBuildings="41" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.04878048780487805" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9512195121951219" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="6d7714c9-2377-491f-9027-d890b93e2db5" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9a39f99a-0651-4d5a-8eb7-7e8ce2b63869" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="3736.91771" id="7ea1747c-84e1-4787-ae4a-9247ec08f7c1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bb839ea3-5fae-4094-8a99-b7f080d49685" connectedTo="3d8b158f-89fb-40c1-b557-7309977fe124" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="eef70741-02e1-42bb-a1d4-9d908bfffec9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="6617686a-5f38-4b1d-ae27-20561a64870b" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="7694.11561" id="e6895ae0-aeea-49d8-b1db-8c116b3ea935">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="19104ff9-11b4-46d8-a3cf-fe233823f8d0" connectedTo="4440621a-8bf0-404c-9d7e-ca85b74bda62" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="29fbdef7-7462-45b4-b785-0d68a7f1a9c2" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2048d0eb-1afc-4530-bcf4-eac3edca5e66" connectedTo="924627e8-4a12-4abf-8558-e6f98ef242bc">
              <profile xsi:type="esdl:SingleValue" value="3245.08065" id="a85cc997-e7eb-4e51-91a8-71adb01c6e14">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="bc092a94-7ec8-431b-a1cc-f831275f8bcc" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="62295872-d82d-4696-8b55-794510cb3484" connectedTo="924627e8-4a12-4abf-8558-e6f98ef242bc">
              <profile xsi:type="esdl:SingleValue" value="443.986457" id="8d9a7930-5b41-4ed2-a278-7d5c77367ba3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="601ccc12-d080-49a2-adf8-d43ffb268577" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="3436366c-a34d-425f-a768-faa2c658f02b" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="4426.99728" id="476ff572-65f1-4650-8d70-8b44889a969d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="84c76abc-ad54-4a33-bea1-54468daf68b1" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="4440621a-8bf0-404c-9d7e-ca85b74bda62" connectedTo="19104ff9-11b4-46d8-a3cf-fe233823f8d0">
              <profile xsi:type="esdl:SingleValue" value="6322.836" id="a6bea5c7-7252-462b-861b-ebe44217aedb">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="ad61585c-2056-4344-ab83-e8a62894ad9a" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="3d8b158f-89fb-40c1-b557-7309977fe124" name="InPort" connectedTo="bb839ea3-5fae-4094-8a99-b7f080d49685"/>
            <port xsi:type="esdl:OutPort" id="924627e8-4a12-4abf-8558-e6f98ef242bc" connectedTo="2048d0eb-1afc-4530-bcf4-eac3edca5e66 62295872-d82d-4696-8b55-794510cb3484" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.3869035" lon="4.872223142857143"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631307">
        <KPIs xsi:type="esdl:KPIs" id="da2cf574-27bb-4410-9caa-6d87bc04fae3">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="950044d2-6eb8-4453-a0dd-1912598f8bc5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="1638493.0" id="b3d3873e-abff-4044-8f14-896aed65cdf8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="1395.0" id="59bcac8d-bde6-44c4-bc09-2bd88f6eca18">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="1638493.0" id="dee70043-eadd-4e3a-9a0f-8a79300f76cf">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="34607.45809" id="1c4139bc-cbfe-4a9b-8f9f-f06a79d65142">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="36428.8318" id="3c8afbf3-cf71-4f6d-8b78-f3ab3c9c4674">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="3416.4135" id="4d045b8b-19b1-44d3-9410-c9e6453664d4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="f8ba7a7e-7aa2-487a-abc7-c5ae390c7ae8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="1050.0" id="49949658-a994-4266-a09d-af96d7671357">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="4cd22ffa-2b44-48ab-a01b-7a2fea021867" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="ef82e3ba-5306-4ac8-9147-56e9e80a4bb9" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.392306" lon="4.8678315"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3c06f1e5-9315-4fdf-9f63-778b1db0bdaf" name="aansl_gasketel" numberOfBuildings="1951" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9974372116863147" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.0005125576627370579" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.0020502306509482316" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="ba354d34-ae73-4c9e-bae5-df4e40bd2891" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c770ad6b-811f-4f65-a11b-5e4d32178303" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="27163.7694" id="3b9f48a6-565c-49d9-bf1a-816ea96475ee">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="944a1ae4-c621-4537-9667-4bf3bdb86be3" connectedTo="32267ab9-da78-409b-b564-710ac92c5e3c" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="05ddab9c-e1fc-414b-9264-01137a53091a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="901c4e94-75c1-40bf-a7e8-499da297dd13" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="18095.7037" id="c6f8b0cb-a84d-4eb4-8b03-9d54e58a5f3e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="6e50c1e2-1b56-4c6c-8342-b8a7a6da7816" connectedTo="2b486bbc-c95c-43cc-ab04-5fd2ecd077eb 8e182c15-328a-4d04-b11d-9fc758c2d722" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="72cd5946-4bb3-4f7d-b3a1-7208719942e8" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0c898858-9c9b-4f0b-a5ef-2b47d293bbda" connectedTo="4ea34168-24bb-4920-afdb-a95857965241">
              <profile xsi:type="esdl:SingleValue" value="21852.781" id="65939382-abf3-4100-871d-c723e6e7e5e5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="3e272a65-1e78-4174-83ae-84ba3656a2f3" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="effa51a4-2943-4fe0-97e1-ab08bb239c01" connectedTo="4ea34168-24bb-4920-afdb-a95857965241">
              <profile xsi:type="esdl:SingleValue" value="7440.9" id="04ebdf37-7e6c-44cc-895e-2ae661a0267c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c04cc79b-c91e-428b-99dc-7ae9a682d81e" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2b486bbc-c95c-43cc-ab04-5fd2ecd077eb" connectedTo="6e50c1e2-1b56-4c6c-8342-b8a7a6da7816">
              <profile xsi:type="esdl:SingleValue" value="1.49854165" id="62c32948-eb1f-4566-b30c-ab3b07ae0e88">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2290850d-99b7-4339-a398-190b42817e85" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8e182c15-328a-4d04-b11d-9fc758c2d722" connectedTo="6e50c1e2-1b56-4c6c-8342-b8a7a6da7816">
              <profile xsi:type="esdl:SingleValue" value="19465.6614" id="7465c227-997d-470a-811a-0bd41f185500">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="034a4044-f6b8-4ff6-8c12-0e5e23155511" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="32267ab9-da78-409b-b564-710ac92c5e3c" name="InPort" connectedTo="944a1ae4-c621-4537-9667-4bf3bdb86be3"/>
            <port xsi:type="esdl:OutPort" id="4ea34168-24bb-4920-afdb-a95857965241" connectedTo="0c898858-9c9b-4f0b-a5ef-2b47d293bbda effa51a4-2943-4fe0-97e1-ab08bb239c01" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.392306" lon="4.8650983750000005"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="ca926bd2-e8fa-404e-bad6-523760500970" name="aansl_gasketel" floorArea="46204.65" numberOfBuildings="19" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.5789473684210527" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.42105263157894735" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="90303728-d68b-42e4-84e7-ba185595b44a" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9c78dac8-9f7b-43d6-8a15-6789150ccd66" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="5233.42032" id="6e251a32-2869-4491-bf16-7285ce385e30">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="684301e8-bb6e-4976-b65d-2f7088fc2b28" connectedTo="1b6ce0ba-ce46-43f3-aa25-86a83fde5252" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="4c406c69-2100-4b8e-8544-36cdd95ca95a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8e9a5fa3-3138-483b-a9ef-7b0c25769baa" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="18333.1281" id="a1c32883-58b2-41ad-a958-9bb642e1c7fc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4cdee375-c749-4128-be49-87ae6cddac22" connectedTo="d093114d-f39f-43d8-b5a7-eeaff6eb4be7" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="27089daf-4631-4d42-9527-e291054198d1" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="1a5355b6-1354-47d7-9418-4bb5b1685c12" connectedTo="b806dc1f-5667-4c77-a671-cfe938c977dc">
              <profile xsi:type="esdl:SingleValue" value="5009.77992" id="184aef7b-cf84-4a56-bf87-3e1947611417">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="d92770de-7ef2-427e-b827-53b95c79f90b" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7701e3fb-a580-4df2-b5a5-06add235afb6" connectedTo="b806dc1f-5667-4c77-a671-cfe938c977dc">
              <profile xsi:type="esdl:SingleValue" value="303.997166" id="79cafcb0-3311-4a25-a947-5edbbc3d3749">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="2fd4b7ce-39f6-452b-b26a-b6182c2afe8e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="b482fc7e-1003-4288-8e33-1e5d5536bfcf" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="5911.13957" id="f4ce4cc5-9807-4b6d-9ab6-8174e55eb346">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5231dc0c-9333-4be4-abe5-1704dbc2d3d2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d093114d-f39f-43d8-b5a7-eeaff6eb4be7" connectedTo="4cdee375-c749-4128-be49-87ae6cddac22">
              <profile xsi:type="esdl:SingleValue" value="18512.9589" id="be506b5d-c990-4669-8059-75ca3d873f8a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="75c466d9-d867-4194-9f83-782e4ce288e5" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="1b6ce0ba-ce46-43f3-aa25-86a83fde5252" name="InPort" connectedTo="684301e8-bb6e-4976-b65d-2f7088fc2b28"/>
            <port xsi:type="esdl:OutPort" id="b806dc1f-5667-4c77-a671-cfe938c977dc" connectedTo="1a5355b6-1354-47d7-9418-4bb5b1685c12 7701e3fb-a580-4df2-b5a5-06add235afb6" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.389209" lon="4.8678315"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03633600">
        <KPIs xsi:type="esdl:KPIs" id="0061ad29-ad91-4c41-9ffa-4b234b72efa9">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="f1348322-97b5-4983-ae8b-a61560fdede7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="526085.0" id="90ee79b8-ac92-4e32-834e-4d17ce81f2c5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="428.0" id="3413b231-84e8-43f0-8124-5fe776248e88">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="526085.0" id="5d02a406-d366-455b-8696-08f9cd440b2b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="15617.96143" id="426882af-4036-4545-a981-9dee81b3fd25">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="25572.09797" id="960b72ed-b8c0-4aa0-b8f6-8c0d2d74f958">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="1907.013" id="80ee57e0-f616-4673-aa36-2831189a701a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="4e42ec94-79e5-401e-9142-915167df246f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="1907.013" id="9e84af1e-88d2-4a40-8be6-d2c8fc7c2f3e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="db6bf2b3-984f-4024-8855-15962f3af99a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="06dbd3a7-6f81-4800-9405-3260ddc69fe5" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.387041499999995" lon="4.856257285714286"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="e3b54fab-d99b-4dd4-81fb-ca3adc7e3077" name="aansl_gasketel" numberOfBuildings="226" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.06637168141592921" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9336283185840708" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="dd17f143-6df6-4402-86b9-0ac256d5b3d7" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a71254fc-62ff-484b-a8fe-f2f44eb2af50" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="4629.55489" id="79bb5f22-80ca-497e-97b7-0708ade8a4de">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b42cf4c0-67a4-4ada-8153-ebc3a36a99b1" connectedTo="09c73c24-fced-4a98-b282-2e74d9099f4a" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="358a7f51-ebc7-4914-be11-37afcadd731b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="19d60154-7899-4e99-8c2e-5c5dc5221695" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="2001.41257" id="d8155c42-4f08-4c60-b15b-8ad8cdf31bbc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="3f5a6cf6-3506-4a56-bbb1-ee904905f8c8" connectedTo="2c8a8441-6920-492d-ade8-d053b8aadc04 89d75ccb-413e-4de4-bf19-4c5047c52272" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="682f650a-9ea0-409e-854c-f5db5bbbf60d" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="1f5ad4aa-a101-4b9a-8c7c-ce1e00cd3a95" connectedTo="e7ac6601-eba9-4ed1-9ea9-4662a4934c47">
              <profile xsi:type="esdl:SingleValue" value="2851.23153" id="b8880f2b-39f0-4ae1-80a2-ac41ac30fd24">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="07de71e4-c209-4118-adc6-19a30e9b633d" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e5029567-adb5-4cc8-940d-ba6426dd054e" connectedTo="e7ac6601-eba9-4ed1-9ea9-4662a4934c47">
              <profile xsi:type="esdl:SingleValue" value="1359.35" id="c3ca6ba7-d95e-4883-a1e4-bff88e98fbfe">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="741d85a2-43cb-428b-b2ad-12842d86e609" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2c8a8441-6920-492d-ade8-d053b8aadc04" connectedTo="3f5a6cf6-3506-4a56-bbb1-ee904905f8c8">
              <profile xsi:type="esdl:SingleValue" value="18.6706911" id="01aa0300-8bf8-4f46-b18c-bf13acb6bc25">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0c8ccec7-a190-412c-91ba-b49173bd85d8" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="89d75ccb-413e-4de4-bf19-4c5047c52272" connectedTo="3f5a6cf6-3506-4a56-bbb1-ee904905f8c8">
              <profile xsi:type="esdl:SingleValue" value="1917.51" id="f7ae436f-1d0c-4423-a563-61faa1b7f18a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="750f3b17-995c-4638-8f1f-0393eeee788b" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="09c73c24-fced-4a98-b282-2e74d9099f4a" name="InPort" connectedTo="b42cf4c0-67a4-4ada-8153-ebc3a36a99b1"/>
            <port xsi:type="esdl:OutPort" id="e7ac6601-eba9-4ed1-9ea9-4662a4934c47" connectedTo="1f5ad4aa-a101-4b9a-8c7c-ce1e00cd3a95 e5029567-adb5-4cc8-940d-ba6426dd054e" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.387041499999995" lon="4.859156857142858"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0de463db-a688-462f-b775-37096e2b3f53" name="aansl_gasketel" floorArea="55018.0" numberOfBuildings="14" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="1.0" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="b143420a-4f85-485b-ab09-160efdc5ae77" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="eafb2add-aa33-4893-81ef-5cd611a93fd7" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="11228.562" id="81b6ba0f-40f8-4c71-bb8c-7db91a40ac41">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="fa1577e2-a681-4ba1-b88b-2dfbdf257a65" connectedTo="e3f15049-57c2-4320-ae6a-ccd33864ad97" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="36208db0-f03b-41bb-8039-843283857b77" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d44fb143-0b30-4512-a89e-f02c9852f928" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="23570.6854" id="5ff5ba85-d295-4982-a75e-b753537dc52d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="1f6a1f88-b9c3-400a-acdb-87c8c37e949a" connectedTo="f18a1fc1-efa2-428b-b8f4-96dde8e2abf8" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="22be9a65-82fa-49f7-a2f1-2c9bdd17c84b" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2c092c97-5a39-4d16-8daf-a64bad049e16" connectedTo="d331e710-f470-45a9-b9f1-2e3f9d6b51e3">
              <profile xsi:type="esdl:SingleValue" value="10799.1496" id="0fc1fdc2-f6a7-4216-b7e9-8ce5d3bfe7eb">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="facb1577-47c1-434c-a08a-83827b297c2e" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ae5f62ea-4e89-44d0-9e70-a5812837a789" connectedTo="d331e710-f470-45a9-b9f1-2e3f9d6b51e3">
              <profile xsi:type="esdl:SingleValue" value="608.230342" id="cbc98389-9ac5-4910-8735-d863de471d8c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d3420418-4d9f-44d7-af59-bb93c3ecdf66" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="bf94fd6e-7d09-46e4-926b-18e286ec5716" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="9532.89346" id="91689188-dca2-4e50-bbfa-699cdf8809a4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="509159cf-cea8-4a7f-b375-cc9c21449831" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f18a1fc1-efa2-428b-b8f4-96dde8e2abf8" connectedTo="1f6a1f88-b9c3-400a-acdb-87c8c37e949a">
              <profile xsi:type="esdl:SingleValue" value="20597.822" id="a3c737e5-b28d-47a1-a49e-6a75c0914731">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="cc085908-e657-4b7c-a883-25b485cb7395" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="e3f15049-57c2-4320-ae6a-ccd33864ad97" name="InPort" connectedTo="fa1577e2-a681-4ba1-b88b-2dfbdf257a65"/>
            <port xsi:type="esdl:OutPort" id="d331e710-f470-45a9-b9f1-2e3f9d6b51e3" connectedTo="2c092c97-5a39-4d16-8daf-a64bad049e16 ae5f62ea-4e89-44d0-9e70-a5812837a789" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.387041499999995" lon="4.862056428571429"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03633601">
        <KPIs xsi:type="esdl:KPIs" id="b269edb9-69d5-4690-8a11-9a283d422f3b">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="7ad3369c-3b88-4336-a3b2-427778931d57">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="8520807.0" id="c258e492-ed80-4476-813d-4695b2d65c0c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="875.0" id="ea22044b-5da5-4de8-885c-000d553c7d4a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="8520807.0" id="2e5dd53d-3a10-4862-a701-957942eaa23c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="180973.7196" id="b317b9cb-6f13-4232-8ab2-2f2bde5b9d4c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="237587.5376" id="c2802b57-56a6-493c-b02b-a9d493f0afa5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="17660.1405" id="3e9141f2-58a2-4e01-b3fc-89e4483661f8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="328259ef-146c-4c48-99c8-dbe609b56d3b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="5271.6405" id="64850ac7-c12b-48c9-9a8f-4f19aa35db36">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="6ff3e60a-2598-4156-903c-6ddab25b9dc9" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="bc0d1d4b-20ce-42d2-8b9a-21741327cc12" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.393307" lon="4.84787375"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="d35b820a-fddc-4b33-878b-c7b980588282" name="aansl_gasketel" numberOfBuildings="8249" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9983028245847981" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.0003636804461146806" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.001333494969087162" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="cf44b380-176a-4598-a5c1-98f32cd7de91" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3e46d7f2-f31f-44be-b8e3-91b1b71ebc15" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="132261.548" id="d4a93192-c962-4b2b-a105-3e9095fc307e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="7b1fe83a-9be3-44ee-9409-c0e08c912519" connectedTo="6db26043-5d9c-4bee-8ed5-19646076069e" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="230b4685-2dc4-4777-a88a-9d8ecce258d9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c0335ee4-7ee1-4d48-917e-1ba657a3e359" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="84670.4676" id="bb0eac28-a038-42b3-ac5f-fadc661d952e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bd476c02-04c3-4a0e-88e9-1ab2f05d4338" connectedTo="5a9c7d8b-bea1-499d-a3e2-78013de99259 b5b003ef-8ce9-45c7-88ee-314ff0210c75" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="ee508c3e-3091-4b27-925b-e162dac83afb" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5e43f63b-9b21-4765-a7b5-c0ddeae09aae" connectedTo="a97aa470-bded-44da-b0a0-fa80c508c88a">
              <profile xsi:type="esdl:SingleValue" value="92187.0652" id="132c89df-e24c-4302-abf0-894abda05f34">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="56f1d5e9-b5ff-42d1-936a-7e83a85c379b" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5e811bed-6727-4fb1-bbdb-8c96a5eeeed7" connectedTo="a97aa470-bded-44da-b0a0-fa80c508c88a">
              <profile xsi:type="esdl:SingleValue" value="31406.5" id="a0c61100-0eaf-403f-8abd-5c0b97778cdc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6b7c0ea4-75d8-4597-9733-36bdd582f6d8" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5a9c7d8b-bea1-499d-a3e2-78013de99259" connectedTo="bd476c02-04c3-4a0e-88e9-1ab2f05d4338">
              <profile xsi:type="esdl:SingleValue" value="7.1002368" id="527badbf-fb42-4a4a-9df2-eb7fe57eba9c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d1159863-ba8f-4887-b248-724526f7e4fe" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b5b003ef-8ce9-45c7-88ee-314ff0210c75" connectedTo="bd476c02-04c3-4a0e-88e9-1ab2f05d4338">
              <profile xsi:type="esdl:SingleValue" value="82305.6853" id="90eaded1-208f-4e9e-b723-4e4ab8048a65">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="6f6d79b7-e6fe-49bd-8025-e3fa6ba8ffbd" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="6db26043-5d9c-4bee-8ed5-19646076069e" name="InPort" connectedTo="7b1fe83a-9be3-44ee-9409-c0e08c912519"/>
            <port xsi:type="esdl:OutPort" id="a97aa470-bded-44da-b0a0-fa80c508c88a" connectedTo="5e43f63b-9b21-4765-a7b5-c0ddeae09aae 5e811bed-6727-4fb1-bbdb-8c96a5eeeed7" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.393307" lon="4.8516375"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="9da0b472-b793-4d23-b08a-c937c5341875" name="aansl_gasketel" floorArea="354964.0" numberOfBuildings="115" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.20869565217391303" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.7913043478260869" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="edae5a12-8a64-4058-a9d5-6406e81cdba2" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="080e16af-65a9-451a-b321-45982bba1c3a" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="56154.5439" id="e930a5dd-7f11-4d23-a999-65aef4b4a5f6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="29218549-0b2b-4b7e-92a4-1b8ebda06868" connectedTo="588b8ee5-8e9d-4c96-b877-83aae963270a" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="40108749-4cf6-44ae-856c-e090c7350aa4" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="43f1827c-5a2a-4589-9d67-feb528b65dca" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="152917.07" id="46c763ca-fc56-4cc1-a5ba-1cf1ebadf295">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b95ace5c-c01d-4b58-9946-e2600af6aa36" connectedTo="904249bc-94d8-4847-8306-f2761c52e423" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="dc6e2e43-2df0-40e8-9859-5f322fe9fd96" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="29696ff7-4e69-4d57-852a-8476d6af6622" connectedTo="1fc8481c-379b-421f-a145-40eb2ad7e778">
              <profile xsi:type="esdl:SingleValue" value="55083.8697" id="9d3c564d-e24a-4113-9d2e-d056c5b7aad8">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="6a103f34-380d-4020-9749-5139fc2a67a1" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d98809de-afd7-4742-b7ad-2f7566d7eade" connectedTo="1fc8481c-379b-421f-a145-40eb2ad7e778">
              <profile xsi:type="esdl:SingleValue" value="2296.28487" id="2b47bbd3-7c9a-460c-8877-85b9525d739f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="123b7eb1-9a10-4d7d-a70b-e97845db65a8" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="9176c5a6-144f-4b5f-92b4-6dfdd8c3253a" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="45265.9671" id="78764a82-9b77-4c07-b473-542528055c1b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="378cc31e-d660-41cd-a6b6-ef3ff20cec4e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="904249bc-94d8-4847-8306-f2761c52e423" connectedTo="b95ace5c-c01d-4b58-9946-e2600af6aa36">
              <profile xsi:type="esdl:SingleValue" value="138738.273" id="cb93fc97-ec05-4819-9b05-6c28d7cda882">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="09313329-3736-4266-a7bb-a36400a9d0c3" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="588b8ee5-8e9d-4c96-b877-83aae963270a" name="InPort" connectedTo="29218549-0b2b-4b7e-92a4-1b8ebda06868"/>
            <port xsi:type="esdl:OutPort" id="1fc8481c-379b-421f-a145-40eb2ad7e778" connectedTo="29696ff7-4e69-4d57-852a-8476d6af6622 d98809de-afd7-4742-b7ad-2f7566d7eade" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.393307" lon="4.85540125"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03636601">
        <KPIs xsi:type="esdl:KPIs" id="90a3acf8-ede4-4a79-abd8-9e11765adf98">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="4d1c97ca-fab7-45a5-a703-25024cd59210">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="1480162.0" id="12bf2504-d411-4ee4-a537-0e1b92d54daf">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="2428.0" id="83c87fbb-914e-4043-8444-5b68901a8e82">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="1480162.0" id="8e80cc69-44b3-427e-9a4c-fc28e6cb0ab1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="22266.29034" id="ed3520e4-907c-4b37-90bb-7bdf791c33f1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="21864.29" id="b19838c4-1703-46c7-b1c4-1d02e803e3a1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="1962.396" id="800c2c14-829a-4efd-ac21-9f075adf7f8e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" value="1.260228572" id="8d24acb5-ab46-478a-9543-7cb2cb8e657f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="650.0" id="b04c79f6-ba00-466e-8ffb-fd856f7394c8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="188950b2-173f-47e3-8deb-2f5036c6f725" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="d16ee2d4-4c6d-4e30-9eb9-37aaf7658332" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.42178575" lon="4.8738842"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="a5f7a7b7-49bc-40e8-8c07-f521d663e24d" name="aansl_gasketel" numberOfBuildings="1074" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.8752327746741154" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.013966480446927373" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.11080074487895716" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="be94d24c-66bc-4707-9c37-1f7a6cc4a764" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="607cbf50-1001-4bf0-a930-a1f7df9abe71" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="19369.6758" id="6f5fbc0e-92e7-48d9-9e7b-2ccfde0947bb">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="2e6f71a8-529a-487c-9545-346380ebeda7" connectedTo="cdd09d52-7693-4bde-946b-a9599680bba8" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="b857b6aa-600b-44ed-a4f5-b02ef25577b1" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="6de622a5-55e0-414e-8313-08b586c06959" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="11058.3048" id="812269dd-1004-4476-b1d0-a5a4e26ddecc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ac28f96b-6967-453a-a847-b22c3a15eae5" connectedTo="1146d4fb-5ec6-4fb6-8ad8-f701a5a2be76 14b0183e-8ce1-4e9a-b789-e104d8c30ebc" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="8e31731b-c3a2-44e7-9d2a-583aa9ce14f1" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ba0ea412-b19b-4f58-a123-1d26c431eefc" connectedTo="31a8bd1c-b003-4630-91ef-56aa2afb71b7">
              <profile xsi:type="esdl:SingleValue" value="13344.3073" id="9f2777f7-3565-445c-aea3-e9fba3a8836b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="6a60ac06-cb15-4582-a47c-9e983011d0d9" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="69f23736-e27c-41bc-8fa7-31eb5713579f" connectedTo="31a8bd1c-b003-4630-91ef-56aa2afb71b7">
              <profile xsi:type="esdl:SingleValue" value="4707.8" id="93dda040-6200-4299-b93e-2d6d3514302c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="153efeab-4948-4811-b15c-8e93d3ecae97" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="1146d4fb-5ec6-4fb6-8ad8-f701a5a2be76" connectedTo="ac28f96b-6967-453a-a847-b22c3a15eae5">
              <profile xsi:type="esdl:SingleValue" value="64.3848172" id="ad169ca2-9b9c-4b42-a433-f32eb916b4b0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b1741f9c-cb39-4f4a-95f2-991801984b4a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="14b0183e-8ce1-4e9a-b789-e104d8c30ebc" connectedTo="ac28f96b-6967-453a-a847-b22c3a15eae5">
              <profile xsi:type="esdl:SingleValue" value="10672.1151" id="8f5d0cc3-9e7e-479c-9aa4-3b738a821a96">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="1d71d963-d897-43e9-afa7-0af37c7a9f4e" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="cdd09d52-7693-4bde-946b-a9599680bba8" name="InPort" connectedTo="2e6f71a8-529a-487c-9545-346380ebeda7"/>
            <port xsi:type="esdl:OutPort" id="31a8bd1c-b003-4630-91ef-56aa2afb71b7" connectedTo="ba0ea412-b19b-4f58-a123-1d26c431eefc 69f23736-e27c-41bc-8fa7-31eb5713579f" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.417077250000006" lon="4.8830675"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="6c0fb9ef-5507-406f-a066-61292caa69e4" name="aansl_gasketel" floorArea="28468.45" numberOfBuildings="55" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.16363636363636364" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.8363636363636363" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="b8b74b39-02d0-479e-a3aa-2528a173db6d" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2c2d2655-5562-4130-afe1-29618012ad8b" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="4154.82584" id="4c8216af-fd57-4bcf-a5c7-9df9579ea2df">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="0b1cc464-c9dc-44e6-8e11-e1178f7dad68" connectedTo="8a34c141-26e7-4c20-8cf2-e17ed2686858" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="e573f9bf-5856-41ce-86ef-f17988edbff0" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c0b88885-598e-4884-b2da-2d3dc39225e2" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="10805.9852" id="7b476915-020f-46f8-b2a5-396cd2329342">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b38ee32d-26eb-4e45-b1e9-c79c9b155301" connectedTo="fc567a08-40b6-43a6-927b-75534d76771a" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="c6ad12ea-1af0-4305-b313-5c3a00971fbf" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9d4d2cdf-9a6c-477c-a954-86d7ce29b075" connectedTo="a62fb161-f94d-4748-a0fb-12f2eaa7753a">
              <profile xsi:type="esdl:SingleValue" value="3973.80243" id="5c28b282-9cfb-4dc9-bd03-c2045f62c3c6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="8fc383ef-c2b3-4c7e-b187-4d70ca474f90" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7d3b972b-64ab-4ee4-b3bb-9c9c2ca8035e" connectedTo="a62fb161-f94d-4748-a0fb-12f2eaa7753a">
              <profile xsi:type="esdl:SingleValue" value="240.380614" id="e8a45531-61c3-4788-8d24-ed3c35bdafea">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="f0900cad-fd07-47f5-b679-07945ffb824c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="cd865f0b-19d4-4cef-84b9-0ab3bf7b0c1a" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="3634.24563" id="c5b429ad-be95-4df4-9adf-1e5d150870af">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="85e12c3a-df7b-4625-97bb-0a7bda089a81" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="fc567a08-40b6-43a6-927b-75534d76771a" connectedTo="b38ee32d-26eb-4e45-b1e9-c79c9b155301">
              <profile xsi:type="esdl:SingleValue" value="9682.64875" id="d507a321-cf68-492c-b4f8-5b5ed9e3f069">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="04608627-56aa-4bb0-bd32-d2126980bc64" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="8a34c141-26e7-4c20-8cf2-e17ed2686858" name="InPort" connectedTo="0b1cc464-c9dc-44e6-8e11-e1178f7dad68"/>
            <port xsi:type="esdl:OutPort" id="a62fb161-f94d-4748-a0fb-12f2eaa7753a" connectedTo="9d4d2cdf-9a6c-477c-a954-86d7ce29b075 7d3b972b-64ab-4ee4-b3bb-9c9c2ca8035e" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.4194315" lon="4.8769453"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03636602">
        <KPIs xsi:type="esdl:KPIs" id="83cc973a-1753-48b1-beee-79c2126b0eb3">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="e6113827-ee34-427b-871b-820aee89fd26">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="1035653.0" id="851ceb10-13e6-456d-a0d2-425671a93429">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="970.0" id="a32235c0-b6ad-4c2a-8be7-ef84686227f0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="1035653.0" id="0bc429ec-c195-476b-b2c7-660b4821405d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="21280.419159999998" id="37460019-af33-43fb-a7bd-0bce92057019">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="15113.325819999998" id="a0666f14-eca6-46cc-9ae5-ec3804e7d102">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="1458.8295" id="d71e6b0c-0cd2-4c02-9f76-cb26c8f3c1f2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="ffecc41d-7d94-4b81-8bfd-40f8111e86d0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="938.3295" id="2a04ce96-4f0b-43dc-8f9a-d7e0ce60a1a2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="61971a43-7ae9-4ca5-8f18-455b8b04f73b" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="4af57f14-7e51-492b-b8bb-67c990cfbd75" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.42377375" lon="4.884480428571428"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0249e03a-c3bb-4ab5-bc7f-8a7ed9d760da" name="aansl_gasketel" numberOfBuildings="888" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.38513513513513514" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.09684684684684684" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.5146396396396397" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="c94a83c1-0cdb-4b33-bd43-211d5327969a" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7d3a1ac8-10f6-411d-aa60-099418b995b3" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="21213.8307" id="e9097f8c-ef99-419a-aff4-a9390dfd8a57">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bb956ec2-846e-4b3a-ad66-f837870dbc3e" connectedTo="861de5a2-8a70-4da2-895b-3d7d9dfb80e2" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="ab063838-9f64-4685-bb5b-eb3ee74eed08" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="65b2b3c6-0c97-4342-a161-a689d0edff7e" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="9149.78473" id="d0579517-caae-4538-bc56-7eccfb938f6d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="9b42f532-3320-48c4-b2b0-ae609b4fd987" connectedTo="70f1027d-1fba-40f6-9997-d9c2b72532dd cb6431ce-100f-4f8d-a38f-6f89ba0767ad" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="a4f7f9a4-ea56-4c92-8691-92fccf8eb2c8" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a5418d3b-b38e-4191-a728-3298adb91e84" connectedTo="04bc3233-0904-4eb0-a7d0-bc41303e8934">
              <profile xsi:type="esdl:SingleValue" value="13965.6951" id="d5da919e-62da-4065-a83f-937cdac95a12">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="cc32a3fa-30b8-409d-b0d1-3d89f6b13ca8" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3e095af5-e354-403f-8de5-eaba45843ce9" connectedTo="04bc3233-0904-4eb0-a7d0-bc41303e8934">
              <profile xsi:type="esdl:SingleValue" value="5605.4" id="a56ab5a1-5061-47ec-9b0e-490783f8d4ad">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fa1168bd-8574-48cd-aee4-eb201937e89d" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="70f1027d-1fba-40f6-9997-d9c2b72532dd" connectedTo="9b42f532-3320-48c4-b2b0-ae609b4fd987">
              <profile xsi:type="esdl:SingleValue" value="128.623679" id="babaf67f-9037-427e-9c96-c993d72df57f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="9f746bff-501f-4381-be7d-20688d146e39" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="cb6431ce-100f-4f8d-a38f-6f89ba0767ad" connectedTo="9b42f532-3320-48c4-b2b0-ae609b4fd987">
              <profile xsi:type="esdl:SingleValue" value="8701.85242" id="50621784-002e-463b-886b-4ad72d70bc04">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="daca7b7f-0345-48bd-9c80-dcb726dd702a" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="861de5a2-8a70-4da2-895b-3d7d9dfb80e2" name="InPort" connectedTo="bb956ec2-846e-4b3a-ad66-f837870dbc3e"/>
            <port xsi:type="esdl:OutPort" id="04bc3233-0904-4eb0-a7d0-bc41303e8934" connectedTo="a5418d3b-b38e-4191-a728-3298adb91e84 3e095af5-e354-403f-8de5-eaba45843ce9" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.418865249999996" lon="4.893531857142857"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="2673c1c1-53f5-4419-886f-b35047d10aae" name="aansl_gasketel" floorArea="11843.75" numberOfBuildings="12" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.4166666666666667" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.5833333333333334" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="58dff7f7-f8b7-42a3-a5e4-658dd0160d62" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="4cf7554f-7b7f-40e9-b5fa-1c4a0af80533" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="1662.67586" id="dab6435a-80ee-420e-b90d-a46ef5ce7dbc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="2b19fb42-fb0b-42e5-8993-01251af4d282" connectedTo="729611aa-6b0b-4f0b-8afb-647a7aa83cd4" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="6b5fe283-f98f-4062-acf3-4734d5a62f64" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d3950c08-d9b1-4b7a-82cb-d722822aadb6" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="5963.54109" id="fa704a6f-5c77-4f8c-a04b-d279c8927fc5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8bba3af7-b118-4ea2-b440-b2e2f1d6ee8d" connectedTo="0c8ac187-b923-4c4f-8939-195232b7db55" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="9d4ca39d-70e7-4411-8c2c-8bb63e28751b" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="cf1905ff-32a8-49dd-97c6-29784a080b31" connectedTo="d02a5542-8763-4d3e-8ab2-ccdf4e1e87ce">
              <profile xsi:type="esdl:SingleValue" value="1664.64166" id="8567dc2d-0c2f-41b7-8668-053a7885573c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="ce31a1c3-6f6c-4bf4-b58b-d231927219cb" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ca12dee5-a4c8-4e62-bea3-93ac7629eddb" connectedTo="d02a5542-8763-4d3e-8ab2-ccdf4e1e87ce">
              <profile xsi:type="esdl:SingleValue" value="44.6823957" id="c71dcdd7-ca6e-4dc3-bc59-91c162ded577">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="2b5e26ff-b001-4338-88c8-38213e1fdc1c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="1c92b086-dfd7-4773-b88e-8f384c912f14" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1436.16539" id="bde7d77d-709d-472c-b51d-5372aa193b18">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="19c3653b-9802-4f1a-8dec-af7ec731f720" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0c8ac187-b923-4c4f-8939-195232b7db55" connectedTo="8bba3af7-b118-4ea2-b440-b2e2f1d6ee8d">
              <profile xsi:type="esdl:SingleValue" value="5519.44845" id="2bcce74b-9c03-481e-adf1-e27ee95828cf">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="8dd1c1e4-5771-4d4f-a481-e3d9964ed835" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="729611aa-6b0b-4f0b-8afb-647a7aa83cd4" name="InPort" connectedTo="2b19fb42-fb0b-42e5-8993-01251af4d282"/>
            <port xsi:type="esdl:OutPort" id="d02a5542-8763-4d3e-8ab2-ccdf4e1e87ce" connectedTo="cf1905ff-32a8-49dd-97c6-29784a080b31 ca12dee5-a4c8-4e62-bea3-93ac7629eddb" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.42377375" lon="4.887497571428572"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03636604">
        <KPIs xsi:type="esdl:KPIs" id="391d5536-340b-44ed-8c8f-c5a8ffdcaf45">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="5523e7b4-b5d3-4f16-ae95-9f088377f2f2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="38275.0" id="629ac746-19f9-4ecc-9a04-cc5f69146707">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="5474.0" id="eab904ee-6cfe-463e-8134-5690e2f7990f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="38275.0" id="dd3e6421-c8a1-4853-b5b3-6f59b475d23d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="470.2205382" id="4fb9fa9f-c58a-4780-930a-b8b5ff1c8060">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="594.300995" id="412fdbd5-4cc2-4924-b2f9-aa8df88716e3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="10.482" id="5801dace-cc12-4a0c-b20e-2e009319d317">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" id="5cd2da80-0760-4b79-8761-a7b8a856b908"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="550.0" id="91247245-22a2-44b0-854d-2c2c8abb2014">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="04a08cb6-ea4d-4740-8b8d-5bc1af30f9a5" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="53675f84-93e7-49cd-8157-834436e69e57" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.42648525" lon="4.8661625"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="47f6508c-305c-4d9d-a904-d507d57e6758" name="aansl_gasketel" numberOfBuildings="2" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="1.0" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="81a0340b-7196-47a9-b7e8-836b8730e0ca" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="efd3a393-8501-480e-98c9-5020d70ea346" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="67.7707398" id="2681c597-3f12-4a99-97e3-f741a737fffc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="56a0f8db-f083-469f-a85a-5e6dbfd2abc2" connectedTo="90808549-a7b6-4e8c-a24c-5c5fbfae2944" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="d643abf9-134f-48c5-ba93-bfd2f338d564" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="04b3d867-2784-4f68-981b-d4b98dc8798e" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="21.011893" id="2d7252a8-6028-4513-9f2f-b8edd736680e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="36be7435-03d9-48ad-91e7-f80ed4e6c130" connectedTo="8f32081d-a747-49f6-b6b0-5b2e5736b04e d1e7f202-af2e-414e-b432-d73cb6916738" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="986bf231-88ab-4ce4-b389-82d567f1d905" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="db71f75e-4e8c-4f4c-99c1-e77d644ea6f1" connectedTo="41ac463f-59eb-439b-bdca-e6c71fcf4526">
              <profile xsi:type="esdl:SingleValue" value="42.4593472" id="9b9cc1e8-72b6-4aff-a54f-7254b22a1c85">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="9ebb7dc5-12af-4978-b0db-d81be5812e2d" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a44bb1e0-733d-4b9a-be0c-660322b700b1" connectedTo="41ac463f-59eb-439b-bdca-e6c71fcf4526">
              <profile xsi:type="esdl:SingleValue" value="19.4" id="52cd21ab-ba63-439b-808f-6d43dfbc287d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="440ca876-3112-4fbf-b5ef-87adddb74973" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8f32081d-a747-49f6-b6b0-5b2e5736b04e" connectedTo="36be7435-03d9-48ad-91e7-f80ed4e6c130">
              <profile xsi:type="esdl:SingleValue" value="1.34177301" id="bb7336a5-3afb-4fa8-94b7-9fc2c2034269">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="387f1b8f-044d-4c8f-9286-49671f881538" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d1e7f202-af2e-414e-b432-d73cb6916738" connectedTo="36be7435-03d9-48ad-91e7-f80ed4e6c130">
              <profile xsi:type="esdl:SingleValue" value="18.92" id="19b6f37a-e9d2-4ace-beae-ad7f4ece062c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="73337bde-a94b-4b12-82d8-ce219cf70470" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="90808549-a7b6-4e8c-a24c-5c5fbfae2944" name="InPort" connectedTo="56a0f8db-f083-469f-a85a-5e6dbfd2abc2"/>
            <port xsi:type="esdl:OutPort" id="41ac463f-59eb-439b-bdca-e6c71fcf4526" connectedTo="db71f75e-4e8c-4f4c-99c1-e77d644ea6f1 a44bb1e0-733d-4b9a-be0c-660322b700b1" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.41809775" lon="4.8661625"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="108ec04d-68ce-4cad-945d-44ed4a8a2f80" name="aansl_gasketel" floorArea="2259.8" numberOfBuildings="5" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.8" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.2" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="b276807b-6df5-4e37-ab33-89b7314a2eaa" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="6701a719-579d-4179-bfed-40916942c1d0" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="416.762615" id="42ec6004-da91-4545-b9b6-65a54e5d72f4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="cb68f148-b09b-40d5-a6ad-38dd0de1ec87" connectedTo="3391758a-94c9-4c62-bdd1-6a09d1c8f2c0" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="89bc5989-2ad8-42b1-9eb8-852b8eb8ce09" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5498cf7a-cc60-44b9-bdee-c275510e1a16" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="573.289102" id="12ee76a6-8185-4fb6-9e3d-aaf38e1e64d5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4db68452-d3db-4b0d-943c-44bd81d52f7b" connectedTo="48793f61-86c8-410e-ab74-74e375917f10" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="73cb4629-43fb-4cab-8bc2-581468dbd617" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c0abb49c-a298-4c83-886b-a01749c13224" connectedTo="ce189029-3ed0-4256-9169-7150495cd51c">
              <profile xsi:type="esdl:SingleValue" value="351.949352" id="bf2cde56-595c-470a-a0c6-84abee1c9834">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="ca5127a8-6e9b-49db-ae9a-1ede3d530212" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="99af2d6a-e2ce-40c7-97a5-4474bb830156" connectedTo="ce189029-3ed0-4256-9169-7150495cd51c">
              <profile xsi:type="esdl:SingleValue" value="56.4118393" id="8c5d4b9b-c314-43c8-bd1a-4ffa7d0f2982">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="77db9f42-d3b9-4439-b647-d3f3c6912b52" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="72b2fe85-b462-49e9-b7a9-6f7a20376b39" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="330.836288" id="a3d682aa-861e-4f6f-a545-247cb7b1da76">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a198f0f1-1a65-467c-bf45-149ec3e773b8" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="48793f61-86c8-410e-ab74-74e375917f10" connectedTo="4db68452-d3db-4b0d-943c-44bd81d52f7b">
              <profile xsi:type="esdl:SingleValue" value="473.2522" id="45f5b219-64ef-4bb3-a849-14c0a84c37d2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="720228f3-e329-4abd-bcdc-b3574de6c826" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="3391758a-94c9-4c62-bdd1-6a09d1c8f2c0" name="InPort" connectedTo="cb68f148-b09b-40d5-a6ad-38dd0de1ec87"/>
            <port xsi:type="esdl:OutPort" id="ce189029-3ed0-4256-9169-7150495cd51c" connectedTo="c0abb49c-a298-4c83-886b-a01749c13224 99af2d6a-e2ce-40c7-97a5-4474bb830156" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.4222915" lon="4.8661625"/>
        </asset>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03637104">
        <KPIs xsi:type="esdl:KPIs" id="adee7f5d-f12a-4859-84c8-df457e3b769c">
          <kpi xsi:type="esdl:DoubleKPI" name="CO2 uitstoot" id="fc576312-8651-49e9-a70f-80ebae03d0f1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten" value="15232890.0" id="09b2f135-cf50-46c0-b650-9607ab529c6b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten van CO2" value="10408.0" id="574b6bd7-f050-4ebb-bfd5-db320a83e5ca">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Nationale meerkosten per WEQ" value="15232890.0" id="5a410c00-46ce-45f4-ad89-13e4ee32f85c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total warmtevraag per buurt" value="214197.9738" id="2d53da0c-138f-4911-96b5-ed81d5a586af">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total elekvraag per buurt" value="255196.33299999998" id="f6357052-c815-4596-b2d8-2fa312bad15a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total capaciteitsvraag elek per buurt" value="19344.9135" id="6bd369ca-66d8-4555-b386-6c1b1c820e29">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Totaal aantal nieuwe MSR per buurt" value="38.8501016" id="4fc5118c-3df0-4db7-ba76-033dbd323811"/>
          <kpi xsi:type="esdl:DoubleKPI" name="Huidige capaciteit elek per buurt" value="5320.0" id="2a764f73-3136-4f38-916a-4690baf22763">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="383df4dc-cfd9-4ea4-aa12-c78270748a4c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" id="928ad09a-970f-4872-be24-d46fac26fc1f" connectedTo="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="OutPort"/>
          <geometry xsi:type="esdl:Point" lat="52.409985500000005" lon="4.873264333333333"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="6a96c387-710d-4155-85f8-52030b92f32d" name="aansl_gasketel" numberOfBuildings="11360" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="1.0" energyLabel="LABEL_APPP"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="13b10e2d-071b-47e5-8f54-199944059fd8" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f2f6146d-76de-452f-91f8-2c1fb03abe19" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="182180.941" id="4b7fd304-78d2-468d-a6fb-24853fc292c3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="cb7e7f73-4a46-4e4b-9c1c-611c42b3993a" connectedTo="ab61ed2d-da8c-4d84-85ad-369013c4782a" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="8b9329ec-74b9-4780-b77d-8a59531a49b6" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a447e1ef-d7a5-4ce8-bfa5-986c4fd6f57a" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="116595.041" id="bffc4d86-6504-422e-9992-11c8393932a8">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="9725e185-db51-4dea-94f4-3f64d0ad39f8" connectedTo="f76bd0dc-1c7f-4ff4-ab17-30e36a762b24" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="6068d701-1a0c-4576-9cd1-acec0ab7361d" name="Woning vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ca55ab6d-055e-4ec8-b284-e734dc91f44a" connectedTo="5e896003-9d2b-4200-9835-4768549f3b37">
              <profile xsi:type="esdl:SingleValue" value="127114.401" id="9d22043a-141d-4808-90cf-51ae005b4431">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="4cacb86f-de91-4ba0-a531-ccd4ddc154d9" name="Woning vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b06bb729-aaff-4da8-80b3-4eae628d68a0" connectedTo="5e896003-9d2b-4200-9835-4768549f3b37">
              <profile xsi:type="esdl:SingleValue" value="43168.0" id="67f2f66b-c5ff-420b-9a67-f40934361be1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="250.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="33df8ce8-eb98-4d4a-8746-dc9ec8921976" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f76bd0dc-1c7f-4ff4-ab17-30e36a762b24" connectedTo="9725e185-db51-4dea-94f4-3f64d0ad39f8">
              <profile xsi:type="esdl:SingleValue" value="113350.625" id="39d8bba8-ca59-4d5c-a0e8-10013df8142b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="375.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="29051e38-2e94-48cf-a19b-3f620e4159a5" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="ab61ed2d-da8c-4d84-85ad-369013c4782a" name="InPort" connectedTo="cb7e7f73-4a46-4e4b-9c1c-611c42b3993a"/>
            <port xsi:type="esdl:OutPort" id="5e896003-9d2b-4200-9835-4768549f3b37" connectedTo="ca55ab6d-055e-4ec8-b284-e734dc91f44a b06bb729-aaff-4da8-80b3-4eae628d68a0" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.41412725" lon="4.8780835"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="8f4973b6-956f-494a-8292-12dab972d21b" name="aansl_gasketel" floorArea="315331.0" numberOfBuildings="83" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.2891566265060241" energyLabel="LABEL_APPP"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.7108433734939759" energyLabel="LABEL_B"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" id="34a07da2-4882-4aa1-bcd6-2d1e0edc504c" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="36deadf8-b868-43fc-93b6-c4c6f405630b" connectedTo="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501">
              <profile xsi:type="esdl:SingleValue" value="43021.9981" id="02c152bc-d218-4db6-b8b7-05b811d2a8e3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8418bda0-856e-42de-8d7a-42713e1419ef" connectedTo="4c593786-bc6c-4658-bb6b-766b3b4b0a11" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="9f40a283-731c-4533-b2a7-e4f44a833728" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5635305d-3e0b-4c29-9e65-201d2c948409" connectedTo="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f">
              <profile xsi:type="esdl:SingleValue" value="138601.292" id="9256a999-6c88-445b-8caa-438d4a43a654">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="79ab8e36-fb02-49fa-94e2-90b9490abc78" connectedTo="802be37d-0084-4092-b2dd-d1c3f631ef15" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="125.0" lat="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" id="1f6b8704-e374-44e5-b9cc-151a68ed57f6" name="Util vraag ruimteverwarming" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a6cd5f97-0ca3-496d-9ca7-5b1ca5eda247" connectedTo="022b3e53-fe2f-499f-8751-9471f2b1706f">
              <profile xsi:type="esdl:SingleValue" value="42054.136" id="f58466fd-19f4-4b91-8f96-72e1d3ba0ee1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="100.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" id="5319f4ff-e5e5-4086-b2ea-15af1eea7be0" name="Util vraag tapwater" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="1f1a5978-935b-453a-b0d9-34752148be87" connectedTo="022b3e53-fe2f-499f-8751-9471f2b1706f">
              <profile xsi:type="esdl:SingleValue" value="1861.43681" id="8d31ba75-08db-42f7-a041-38b6616cc68b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="200.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="bf29c5cc-1e4f-4dc2-ac44-5da08aa82f0f" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="7f0a46d9-815e-43ca-b284-c6c120c183a1" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="38346.6403" id="eac4b4e6-ec29-42be-b390-ffa4133c9c4a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="300.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8208a579-f0b0-4b59-99e5-2d07f90a2cf0" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="802be37d-0084-4092-b2dd-d1c3f631ef15" connectedTo="79ab8e36-fb02-49fa-94e2-90b9490abc78">
              <profile xsi:type="esdl:SingleValue" value="126877.805" id="db0575c0-548f-47fe-aed0-7cdb31748e5b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="375.0" lat="400.0"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="38e8b917-9003-4ce3-be5e-799e414700d3" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" id="4c593786-bc6c-4658-bb6b-766b3b4b0a11" name="InPort" connectedTo="8418bda0-856e-42de-8d7a-42713e1419ef"/>
            <port xsi:type="esdl:OutPort" id="022b3e53-fe2f-499f-8751-9471f2b1706f" connectedTo="a6cd5f97-0ca3-496d-9ca7-5b1ca5eda247 1f1a5978-935b-453a-b0d9-34752148be87" name="OutPort"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lon="250.0" lat="250.0"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.41412725" lon="4.873264333333333"/>
        </asset>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="cbfbf8d4-7ebc-4547-a71f-92eab061e83f">
        <kpi xsi:type="esdl:DoubleKPI" name="Totale Warmtevraag in studyarea" value="214197.9738" id="470cef6d-9836-4b3c-88b9-dc0166238f8b">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" name="Totale Nationale meerkosten" value="67650328.0" id="4def526b-d88b-4bb6-9248-a52b8b46f41b">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" name="Totale CO2 uitstoot" id="a9ed1953-1e48-4eb4-8b4d-67e3ae98a23d">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
        </kpi>
      </KPIs>
      <asset xsi:type="esdl:GasNetwork" id="2a091aa1-cc50-4216-ada1-c798314f1a9d" name="Gas_network" aggregated="true">
        <port xsi:type="esdl:OutPort" id="4c14dcee-fcb1-4dcc-bd46-c1127ebdb501" connectedTo="9649f599-83fb-43ff-8d04-b9c83a3bdac5 b2271530-b619-4d0f-837f-216414880c94 897782c0-3437-47e3-a50c-19b2a92d3c58 8fb6c6c8-4395-4f41-a37e-a6377b44fede b65d0b03-cc15-49fe-9a82-757ea98f9dd4 fe27f2be-72a5-4504-a324-7c1b80a29650 e02d5d43-87e1-4bd2-a848-2fe0ef642339 d1de8aa6-7d12-4dce-9853-6b84e6ddeec1 f1f7fac6-79e3-4d3f-a4b1-1806280beadd e5508e2d-685c-45ab-aa11-f41152cce6c4 c2d97ac8-cd1f-4799-90f4-244a4eb70346 eeaa0ba6-d5d8-4af3-bfa9-9b38e8698542 9a39f99a-0651-4d5a-8eb7-7e8ce2b63869 c770ad6b-811f-4f65-a11b-5e4d32178303 9c78dac8-9f7b-43d6-8a15-6789150ccd66 a71254fc-62ff-484b-a8fe-f2f44eb2af50 eafb2add-aa33-4893-81ef-5cd611a93fd7 3e46d7f2-f31f-44be-b8e3-91b1b71ebc15 080e16af-65a9-451a-b321-45982bba1c3a 607cbf50-1001-4bf0-a930-a1f7df9abe71 2c2d2655-5562-4130-afe1-29618012ad8b 7d3a1ac8-10f6-411d-aa60-099418b995b3 4cf7554f-7b7f-40e9-b5fa-1c4a0af80533 efd3a393-8501-480e-98c9-5020d70ea346 6701a719-579d-4179-bfed-40916942c1d0 f2f6146d-76de-452f-91f8-2c1fb03abe19 36deadf8-b868-43fc-93b6-c4c6f405630b" name="OutPort"/>
        <geometry xsi:type="esdl:Point" lat="52.405851251823755" lon="4.858365310656482"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" id="6e0b4061-3c95-433a-8db8-2c9c830480cb" name="Waterstof_network" aggregated="true">
        <port xsi:type="esdl:OutPort" id="60421739-6862-469a-87b0-8b2d3d90741f" name="OutPort"/>
        <geometry xsi:type="esdl:Point" lat="52.40647667288568" lon="4.85890682901526"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="2751461c-7262-44a8-baa6-0984d26efbe0" name="Heating_LT_network" aggregated="true">
        <port xsi:type="esdl:InPort" id="0ee79522-dcbb-4d16-a57b-31adb54f7617" name="InPort" connectedTo="473787dd-7e42-4f90-9056-c22f7f896f59 1122d70a-1b1a-4bec-8a0b-398dc0af4388 8d3f0603-6063-47e3-ac9e-1bc898da1a1d 5046a5cc-9f9c-45e0-9bca-d1d85821e6de dd9593e2-f1eb-46c3-b8a4-feb6efea3689 bc8d0ba8-c9cf-48ae-810a-dcb72097f277 e0bff6cd-4165-4ef3-9352-987defe87bd8 ef82e3ba-5306-4ac8-9147-56e9e80a4bb9 06dbd3a7-6f81-4800-9405-3260ddc69fe5 bc0d1d4b-20ce-42d2-8b9a-21741327cc12 d16ee2d4-4c6d-4e30-9eb9-37aaf7658332 4af57f14-7e51-492b-b8bb-67c990cfbd75 53675f84-93e7-49cd-8157-834436e69e57 928ad09a-970f-4872-be24-d46fac26fc1f"/>
        <port xsi:type="esdl:OutPort" id="4ab9429c-2f99-48f8-8902-6672e67616c0" name="OutPort"/>
        <geometry xsi:type="esdl:Point" lat="52.40507204712184" lon="4.854296516370387"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="7880301f-b485-46d3-a81e-ea173661b1f1" name="Heating_MT_network" aggregated="true">
        <port xsi:type="esdl:InPort" id="6325e4de-9de0-4ac0-b2fb-87bccdbbfc13" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="01540328-6ffd-4caf-942a-4084aaf79370" name="OutPort"/>
        <geometry xsi:type="esdl:Point" lat="52.40566414171897" lon="4.856883893606892"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="177cbad2-ab0d-42ba-9ca2-19a3f005d9cf" name="Electricity_network" aggregated="true">
        <port xsi:type="esdl:OutPort" id="173b2b8c-c875-4b5f-8e5c-d3bbf273f93f" connectedTo="9a6c8b45-809a-4576-8f24-de0ffe89d7f5 b3bb48aa-3a2b-45a6-99ab-edb63f752a31 050791e2-0189-4b04-a043-6326f05516d1 49b9e10d-f886-496f-9dad-d260601a8c2b 9c56781d-63e1-42e5-84ea-69ab5f9663aa 75b5db61-b757-4e55-8a44-bcda594db0c1 7841cc99-8a2f-46fc-a955-8788ee78d1cd 30700211-e62f-464f-afdd-fb46248b211b a4ad4b2e-deb9-4ec7-89bf-4192b5d145eb a500528b-0ad3-40b6-bf7d-ce47e253abb4 ee1fd1c0-bdd6-47da-a08f-4ec22f6a2815 09d153ed-1150-48dd-9d60-ca65394bf260 6617686a-5f38-4b1d-ae27-20561a64870b 901c4e94-75c1-40bf-a7e8-499da297dd13 8e9a5fa3-3138-483b-a9ef-7b0c25769baa 19d60154-7899-4e99-8c2e-5c5dc5221695 d44fb143-0b30-4512-a89e-f02c9852f928 c0335ee4-7ee1-4d48-917e-1ba657a3e359 43f1827c-5a2a-4589-9d67-feb528b65dca 6de622a5-55e0-414e-8313-08b586c06959 c0b88885-598e-4884-b2da-2d3dc39225e2 65b2b3c6-0c97-4342-a161-a689d0edff7e d3950c08-d9b1-4b7a-82cb-d722822aadb6 04b3d867-2784-4f68-981b-d4b98dc8798e 5498cf7a-cc60-44b9-bdee-c275510e1a16 a447e1ef-d7a5-4ce8-bfa5-986c4fd6f57a 5635305d-3e0b-4c29-9e65-201d2c948409" name="OutPort"/>
        <port xsi:type="esdl:InPort" id="5b905974-362c-4813-8846-d6a87e0a240e" name="InPort"/>
        <geometry xsi:type="esdl:Point" lat="52.40788612969791" lon="4.857161214074494"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" name="Green Gas Producer" id="ef7d03c6-81cd-4010-9252-c726b15d4add">
        <port xsi:type="esdl:OutPort" id="017c65c6-4e44-42bf-b820-d5e1f331f62a">
          <profile xsi:type="esdl:SingleValue" value="1228990.5194048" id="6f84e4ea-41ab-4fb6-bd4b-c086ae4f7c79"/>
        </port>
        <geometry xsi:type="esdl:Point" lat="52.40530801703822" lon="4.861469198173376"/>
      </asset>
    </area>
    <date xsi:type="esdl:InstanceDate" date="2050-01-01T00:00:00.000000"/>
  </instance>
</esdl:EnergySystem>
