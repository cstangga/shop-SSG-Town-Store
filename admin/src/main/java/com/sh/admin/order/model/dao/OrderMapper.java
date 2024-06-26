package com.sh.admin.order.model.dao;

import com.sh.admin.order.model.dto.OrderDto;
import com.sh.admin.order.model.dto.OrderItemDto;
import com.sh.admin.order.model.dto.OrderQuantityDto;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface OrderMapper {
    List<OrderDto> findOrderList();

    List<OrderItemDto> findByOrderId(int orderId);

    int orderCancelByOrderId(int orderId, LocalDate cancelDate); // 주문취소

    int shipmentByOrderId(int orderId, long trackNumber, LocalDate shipmentDate); // odrerId값으로 주문찾고> 송장번호, shipmentDate(발송날짜) 들어감

    List<OrderItemDto> findByOrderItemDto(String orderId);

    int updateOrder(int itemId, int itemQuantity);

    int orderQuantity(int itemId);

    List<OrderQuantityDto> findAllOrderItem();

    int updateOrderStatus(int orderId);

    int nowQuantity(int orderItemId);

    int insertSales(OrderItemDto orderItemDto);
}
