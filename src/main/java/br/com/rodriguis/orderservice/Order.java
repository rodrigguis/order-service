package br.com.rodriguis.orderservice;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.ZonedDateTime;

@Entity
@Table(name = "orders")
@Getter
@NoArgsConstructor
public class Order {
    @Id
    Long id;
    @Column(name = "customer_id")
    Long customerId;
    @Column(name = "order_date")
    ZonedDateTime orderDate;
    @Column(name = "total_amount")
    BigDecimal totalAmount;
}