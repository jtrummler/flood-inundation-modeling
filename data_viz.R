# Calgary: Land Cover

ggplot() +
  geom_sf(data = fishnet_calgary.sf, 
          aes(fill = as.factor(impervious)),
          color=NA) +
  scale_fill_manual(values = c("#86BBD8","#2F4858"), name = "Factor")+
  labs(title="Land Cover\n")+
  mapTheme1()

# Calgary: Slope

ggplot() +
  geom_sf(data = fishnet_calgary.sf, 
          aes(fill = slope),
          color=NA)+
  scale_fill_manual(values = c("#86BBD8","#2F4858"), name = "Factor")+
  labs(title="Slope\n")+
  mapTheme1()

# Calgary: FAC

ggplot() +
  geom_sf(data = fishnet_calgary.sf, 
          aes(fill = flow_acc),
          color=NA) +
  scale_fill_gradient(low =  "#86BBD8" , high = "#2F4858",
                      name = "Max Flow")
labs(title="Flow Accumulation\n")+
  mapTheme1()

# Calgary: Parks

ggplot() +
  geom_sf(data = fishnet_calgary.sf, aes(fill = parks_dist), color=NA) +
  scale_fill_gradient(low =  "#86BBD8" , high = "#2F4858")+
  labs(title = "Distance to \nNearest Park", fill="Distance \n(meters)") + 
  mapTheme1()

# Calgary: Hydrological features

ggplot() +
  geom_sf(data = fishnet_calgary.sf, 
          aes(fill = water_dist),
          color=NA) +
  scale_fill_gradient(low =  "#86BBD8" , high = "#2F4858",
                      name = "Distance (Meters)")
labs(title="Distance to Nearest\nHydrological Feature")+
  mapTheme1()

# Minneapolis: Land Cover

ggplot() +
  geom_sf(data = mpls_fn_landcover, 
          aes(fill = pervious),
          color=NA)+
  scale_fill_manual(values = c("#86BBD8","#2F4858"), name = "Factor")+
  labs(title="Land Cover")+
  mapTheme1()

# Minneapolis: Slope

ggplot() +
  geom_sf(data = mpls_fn_slope, 
          aes(fill = slope),
          color=NA)+
  scale_fill_manual(values = c("#86BBD8","#2F4858"), name = "Factor")+
  labs(title="Slope")+
  mapTheme1()

# Minneapolis: FAC

ggplot() +
  geom_sf(data = mpls_fn_fac, 
          aes(fill = fac),
          color=NA) +
  scale_fill_gradient(low =  "#86BBD8" , high = "#2F4858",
                      name = "Max Flow")
labs(title="Flow Accumulation\n")+
  mapTheme1()

# Minneapolis: Parks

ggplot() +
  geom_sf(data = mpls_fn_parks, 
          aes(fill = dist_parks),
          color=NA) +
  scale_fill_gradient(low =  "#86BBD8" , high = "#2F4858",
                      name = "Distance\n(meters)")
labs(title="Distance to \nNearest Park")+
  mapTheme1()

# Minneapolis: Hydrological features

ggplot() +
  geom_sf(data = mpls_fn_water, 
          aes(fill = dist_water),
          color=NA) +
  scale_fill_gradient(low =  "#86BBD8" , high = "#2F4858",
                      name = "Distance\n (Meters)")
labs(title="Distance to Nearest\nHydrological Feature")+
  mapTheme1()